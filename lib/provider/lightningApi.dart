import 'dart:convert';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/lightning.dart';
import 'package:web_socket_channel/io.dart';

part 'lightningApi.g.dart';

@riverpod
Stream<List<Lightning>> lightning(LightningRef ref) async* {
  final channel =
      IOWebSocketChannel.connect(Uri.parse('wss://ws7.blitzortung.org'));

  ref.onDispose(() => channel.sink.close());

  channel.sink.add('{"a": 111}');

  List<Lightning> allLightnings = [];
  await for (final rawData in channel.stream) {
    try {
      final decodedData = decode(rawData);
      final data = jsonDecode(decodedData) as Map<String, dynamic>;
      allLightnings.add(Lightning.fromJson(data));

      if (data['sig'] != null) {
        for (final sigData in data['sig']) {
          allLightnings.add(Lightning.fromJson({
            'time': sigData['time'],
            'lat': sigData['lat'],
            'lon': sigData['lon'],
          }));
        }
      }

      yield List<Lightning>.from(allLightnings);
    } catch (e) {
      print('Error when receiving data: $e');
    }
  }
}

String decode(String data) {
  Map<int, String> e = {};
  List<String> d = data.split('');
  String c = d[0];
  String f = c;
  List<String> g = [c];
  int h = 256;
  int o = h;

  for (int b = 1; b < d.length; b++) {
    int a = d[b].codeUnitAt(0);
    String aString = h > a ? d[b] : e[a] ?? f + c;
    g.add(aString);
    c = aString[0];
    e[o] = f + c;
    o++;
    f = aString;
  }

  return g.join('');
}

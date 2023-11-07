import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lightning_flash/provider/lightningApi.dart';
import '../models/lightning.dart';

class LightningStreamWidget extends ConsumerWidget {
  const LightningStreamWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Stream<List<Lightning>> lightning = ref.watch(lightningProvider.stream);

    return StreamBuilder<List<Lightning>>(
      stream: lightning,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            final lightning = snapshot.data!;
            return Column(
              children: [
                Text(
                  'Number of lightning: ${lightning.length}',
                ),
                ListView.builder(
                  physics: const ScrollPhysics(),
                  reverse: true,
                  shrinkWrap: true,
                  itemCount: lightning.length,
                  itemBuilder: (context, index) {
                    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(
                        lightning[index].time ~/ 1000000);
                    String formattedDate =
                        DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
                    return ListTile(
                      title: Text(formattedDate),
                      subtitle: Text(
                          '${lightning[index].distance?.toStringAsFixed(2)} km'),
                      leading: Text('${lightning[index].lat}'),
                      trailing: Text('${lightning[index].lon}'),
                    );
                  },
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

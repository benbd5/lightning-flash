import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lightning_flash/provider/lightningApi.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../models/lightning.dart';

class LightningMapWidget extends ConsumerWidget {
  const LightningMapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Stream<List<Lightning>> lightningStream =
        ref.watch(lightningProvider.stream);

    final mapController = MapController();

    return StreamBuilder<List<Lightning>>(
      stream: lightningStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            final lightningData = snapshot.data!;
            final markers = buildMarkers(lightningData);

            return FlutterMap(
              mapController: mapController,
              options: const MapOptions(
                initialCenter: LatLng(51.5, -0.09),
                initialZoom: 5,
                maxZoom: 13,
                minZoom: 3,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                ),
                MarkerLayer(markers: markers),
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

List<Marker> buildMarkers(List<Lightning> lightningData) {
  return lightningData.map((lightning) {
    return Marker(
        width: 3.0,
        height: 3.0,
        point: LatLng(lightning.lat, lightning.lon),
        child: Container(
            decoration: const BoxDecoration(
          color: Colors.red,
        )));
  }).toList();
}

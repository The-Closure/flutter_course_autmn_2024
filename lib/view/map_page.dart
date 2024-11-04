import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(34.8021, 38.9968),
          initialZoom: 7,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          const MarkerLayer(
            markers: [
              Marker(
                point: LatLng(34.8021, 38.9968),
                child: Icon(
                  Icons.room,
                  size: 25,
                  color: Colors.red,
                ),
              ),
              Marker(
                point: LatLng(34.8021, 37.9968),
                child: Icon(
                  Icons.room,
                  size: 25,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          CircleLayer<Circle>(
            circles: [
              CircleMarker(
                useRadiusInMeter: true,
                point: const LatLng(34.8021, 38.9968),
                radius: 100000,
                color: Colors.red.withOpacity(0.2),
              ),
            ],
          ),
          PolygonLayer<Polygon>(
            polygons: [
              Polygon(
                points: [
                  const LatLng(34.8021, 38.9968),
                  const LatLng(35.8021, 38.9968),
                  const LatLng(35.8021, 39.9968),
                  const LatLng(34.8021, 39.9968),
                ],
                color: Colors.green.withOpacity(0.5),
              ),
            ],
          ),
          PolylineLayer<Polyline>(polylines: [
            Polyline(points: [
              const LatLng(34.8021, 38.9968),
              const LatLng(30.8021, 38.9968),
            ])
          ])
        ],
      ),
    );
  }
}

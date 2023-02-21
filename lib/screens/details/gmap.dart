import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(9.9252, 78.1198);

class GMap extends StatefulWidget {
  const GMap({Key key}) : super(key: key);
  @override
  State<GMap> createState() => _GMapState();
}

class _GMapState extends State<GMap> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: GoogleMap(
      initialCameraPosition: CameraPosition(
        target: currentLocation,
        zoom: 40,
      ),
));
}
}
import "package:flutter/material.dart";
import "package:flutter_map/flutter_map.dart";
import "package:latlong2/latlong.dart";
import "package:http/http.dart" as http;

class GMap extends StatefulWidget {
  const GMap({Key key}) : super(key: key);
  @override
  State<GMap> createState() => _GMapState();
}

class _GMapState extends State<GMap> {
  final String apiKey = "T2rYSspl8AbbsHztn1TXSX7FkGLotoh4";

  @override
  Widget build(BuildContext context) {
    final tomtomHQ = new LatLng(9.939093, 78.121719);
    return MaterialApp(
      title: "TomTom Map",
      home: Scaffold(
        body: Center(
            child: Stack(
          children: <Widget>[
            FlutterMap(
              options: new MapOptions(center: tomtomHQ, zoom: 13.0),
              children: [
                TileLayer(
                  urlTemplate: "https://api.tomtom.com/map/1/tile/basic/main/"
                      "{z}/{x}/{y}.png?key={apiKey}",
                  additionalOptions: {"apiKey": apiKey},
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}

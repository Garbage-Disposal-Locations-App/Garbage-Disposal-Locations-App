import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMap extends StatefulWidget {
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.maxFinite,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          zoomControlsEnabled: true,
          initialCameraPosition: CameraPosition(
            target: LatLng(40.730610,-73.935242),
            zoom: 12,
          ),
        ),
      ),
    );
  }
}

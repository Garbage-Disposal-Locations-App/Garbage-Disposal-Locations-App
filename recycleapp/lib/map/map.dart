import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyMap extends StatefulWidget {
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  final Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    //FirebaseFirestore firestore = FirebaseFirestore.instance;
    //CollectionReference markers = Firestore.collection('GarbageMarkers');

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
            target: LatLng(40.730610, -73.935242), //Manhattan Lat/lng
            zoom: 12,
          ),
          /*
          markers: documents.map((documents) => Marker(
                markerId: MarkerId(documents.get('name')),
                position: LatLng(
                    documents.get('Latitude'), documents.get('Longitude')),
              )),*/
        ),
      ),
    );
  }

// I want to add the two markers from the database

}

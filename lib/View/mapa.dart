import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapa extends StatefulWidget {
  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {

  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mapas e geolocalização"),),
      body: Container(
        child: GoogleMap(
            mapType: MapType.normal,
            //-23.562436, -46.655005
            initialCameraPosition: CameraPosition(
              //-29.789907, -55.768586
                target: LatLng(-29.789907, -55.768586),
              zoom: 16
            ),
          onMapCreated: (GoogleMapController controller){
              _controller.complete( controller );
          },
        ),
      ),
    );
  }
}

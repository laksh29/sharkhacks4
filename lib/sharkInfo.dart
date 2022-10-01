import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Marker buildMarker(name, lat, long, title) {
  return Marker(
      markerId: MarkerId(name),
      position: LatLng(lat, long),
      infoWindow: InfoWindow(title: title),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan));
}

final List sharkInfo = [
  {"name": "Shark 1", "lat": 22.900000, "long": 88.389999, "title": "shark 1"},
  {"name": "Shark 2", "lat": 27.40364, "long": 83.031971, "title": "shark 2"},
  {"name": "Shark 3", "lat": 21.012094, "long": 84.040789, "title": "shark 3"},
  {"name": "Shark 4", "lat": 26.474667, "long": 92.534751, "title": "shark 4"},
  {"name": "Shark 5", "lat": 17.3850, "long": 78.4867, "title": "shark 5"}
];

SizedBox buildSizedHeight(height) => SizedBox(height: height);

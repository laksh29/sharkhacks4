import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sharkhacks4/sharkInfo.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> with SingleTickerProviderStateMixin {
  static const _initialCameraPosition =
      CameraPosition(target: LatLng(20.5937, 78.9629), zoom: 4);
  late GoogleMapController _googleMapController;
  // late Marker _origin;
  // late Marker _destination;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

// late PermissionStatus _status;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Set<Marker> markers = new Set();
    for (var i = 0; i < sharkInfo.length; i++) {
      markers.add(buildMarker(sharkInfo[i]["name"], sharkInfo[i]["lat"],
          sharkInfo[i]["long"], sharkInfo[i]["title"]));
    }

// scaffold
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        GoogleMap(
          initialCameraPosition: _initialCameraPosition,
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          onMapCreated: (controller) => _googleMapController = controller,
          markers: markers,
          // onLongPress: _addMarker,
        ),
        Positioned(
            top: 20,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              // color: Colors.red,
              child: const Text(
                "Find Sharks Around You !",
                style: TextStyle(
                    fontSize: 50,
                    fontFamily: "vintage",
                    color: Color(0xff000000)),
                textAlign: TextAlign.center,
              ),
            )),
        Positioned(
          right: 20,
          bottom: 60,
          child: FloatingActionButton(
            onPressed: () => _googleMapController.animateCamera(
              CameraUpdate.newCameraPosition(_initialCameraPosition),
            ),
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.black,
            child: const Icon(Icons.center_focus_strong),
          ),
        )
      ])),
    );
  }
}

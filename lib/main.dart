import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sharkhacks4/bottomNav.dart';
import 'package:sharkhacks4/map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Maps in Flutter',
      theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const BottomNav(),
        '/map': (context) => const MapPage(),
      },
    );
  }
}

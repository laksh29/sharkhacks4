import 'package:flutter/material.dart';
import 'package:sharkhacks4/bottomNav.dart';
import 'package:sharkhacks4/facts.dart';
import 'package:sharkhacks4/game.dart';
import 'package:sharkhacks4/map.dart';
import 'package:sharkhacks4/startPage.dart';
import 'package:sharkhacks4/types.dart';

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
        '/': (context) => const StartPage(),
        '/bottomnav': (context) => const BottomNav(),
        '/map': (context) => const MapPage(),
        '/sharktypes': (context) => const SharkTypes(),
        'facts': (context) => const Facts(),
        '/game': (context) => const Game(),
      },
    );
  }
}

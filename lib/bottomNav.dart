import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sharkhacks4/facts.dart';
import 'package:sharkhacks4/game.dart';
import 'package:sharkhacks4/map.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int count = 0;
  final screens = [const MapPage(), const Facts(), const Game()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[count],
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyan,
        type: BottomNavigationBarType.fixed,
        currentIndex: count,
        onTap: (index) => setState(() => count = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.map_rounded), label: "Map"),
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_rounded), label: "Facts and Jokes"),
          BottomNavigationBarItem(
              icon: Icon(Icons.quiz_rounded), label: "Game"),
        ],
      ),
    );
  }
}

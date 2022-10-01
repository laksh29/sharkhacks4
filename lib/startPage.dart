import 'package:flutter/material.dart';
import 'package:sharkhacks4/sharkInfo.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9CDCCA),
      body: SafeArea(
          child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildSizedHeight(70.0),
          Image.asset(
            "assets/MLH Logo.png",
            scale: 1.5,
          ),
          Image.asset("assets/Shark Hacks.png"),
          buildSizedHeight(25.0),
          const Text(
            "Welcome To",
            style: TextStyle(
                fontFamily: "vintage", fontSize: 50, color: Color(0xff0F2E4C)),
          ),
          const Text(
            "Sharking Sharks",
            style: TextStyle(
                fontFamily: "vintage", fontSize: 50, color: Color(0xff1C529E)),
          ),
          const Text(
            "Fun place where you can know your Sharks",
            style: TextStyle(fontFamily: "Aesthetic", color: Color(0xff1C529E)),
          ),
          buildSizedHeight(150.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 235, 197, 108)),
                onPressed: () {},
                child: const Text(
                  "Quick Guide",
                  style: TextStyle(
                      fontFamily: "Aesthetic",
                      color: Color(0xff1D539F),
                      fontSize: 18),
                ),
              ),
              const SizedBox(width: 30),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 228, 104, 95)),
                onPressed: () {
                  Navigator.pushNamed(context, '/bottomnav');
                },
                child: const Text(
                  "Shark Shark",
                  style: TextStyle(
                      fontFamily: "Aesthetic",
                      color: Color(0xff1D539F),
                      fontSize: 18),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}

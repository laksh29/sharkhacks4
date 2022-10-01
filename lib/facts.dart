import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sharkhacks4/sharkInfo.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Facts extends StatefulWidget {
  const Facts({super.key});

  @override
  State<Facts> createState() => _FactsState();
}

class _FactsState extends State<Facts> {
  @override
  Widget build(BuildContext context) {
    int active = 0;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          buildSizedHeight(30.0),
          // facts
          const Text(
            "Facts about Sharks !",
            style: TextStyle(
                fontFamily: "vintage", fontSize: 45, color: Color(0xff0F2E4C)),
          ),
          // facts carousel
          CarouselSlider.builder(
            itemCount: facts.length,
            itemBuilder: (context, index, realIndex) {
              return buildFacts(index);
            },
            options: CarouselOptions(
              aspectRatio: 2 / 1,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 6),
              enableInfiniteScroll: false,
            ),
          ),

          buildSizedHeight(30.0),
          // Jokes
          const Text(
            "Jokes on Sharks !",
            style: TextStyle(
                fontFamily: "vintage", fontSize: 45, color: Color(0xff0F2E4C)),
          ),
          // Jokes carousel
          CarouselSlider.builder(
            itemCount: jokes.length,
            options: CarouselOptions(
              aspectRatio: 2 / 1,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 6),
              enableInfiniteScroll: false,
            ),
            itemBuilder: (context, index, realIndex) {
              return buildJokes(index);
            },
          ),
          buildSizedHeight(40.0),
          // Submission
          Container(
            height: 150,
            width: 290,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
                color: const Color(0xff9CDCCA),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2, color: const Color(0xff0F2E4C))),
            child: Column(
              children: [
                const Text(
                  "! Submissions !",
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 22),
                ),
                buildSizedHeight(10.0),
                const Text(
                  "If you have any additions to our jokes or facts submit them by clicking below !!",
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w100,
                      fontSize: 15),
                ),
                buildSizedHeight(5.0),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Let's Go !!",
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ))
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget buildFacts(int index) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context, builder: (context) => buildAlert(context, index));
      },
      child: Container(
          decoration: BoxDecoration(
              color: const Color(0xff9CDCCA),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2, color: const Color(0xff0F2E4C))),
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            facts[index]["Header"]!,
            style: const TextStyle(
                fontSize: 35,
                color: Color(0xff1C529E),
                fontFamily: "aesthetic"),
            textAlign: TextAlign.start,
          )),
    );
  }

  AlertDialog buildAlert(BuildContext context, int index) {
    return AlertDialog(
      title: Text(
        facts[index]["Header"]!,
        style:
            const TextStyle(fontFamily: "poppins", fontWeight: FontWeight.w500),
      ),
      content: Text(facts[index]["info"]!,
          style: const TextStyle(
              fontFamily: "poppins", fontWeight: FontWeight.w100)),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK",
                style: TextStyle(
                    fontFamily: "poppins", fontWeight: FontWeight.w100)))
      ],
    );
  }

  Widget buildJokes(int index) {
    return Container(
        decoration: BoxDecoration(
            color: const Color(0xff9CDCCA),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 2, color: const Color(0xff0F2E4C))),
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
          jokes[index]["joke"]!,
          style: const TextStyle(
              fontSize: 25, color: Color(0xff1C529E), fontFamily: "aesthetic"),
          textAlign: TextAlign.start,
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sharkhacks4/sharkInfo.dart';

class SharkTypes extends StatefulWidget {
  const SharkTypes({super.key});

  @override
  State<SharkTypes> createState() => _SharkTypesState();
}

class _SharkTypesState extends State<SharkTypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        title: const Text(
          "Types of Sharks",
          style: TextStyle(
              fontFamily: "vintage", fontSize: 40, color: Color(0xff0F2E4C)),
        ),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: types.length,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    buildInfoSharks(context, index);
                  },
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 2,
                          color: const Color(0xff0F2E4C),
                        ),
                        color: const Color(0xff9CDCCA)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Name: ",
                          style: TextStyle(
                              fontFamily: "poppins",
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          types[index]["type"]!,
                          style: const TextStyle(
                              fontFamily: "poppins", fontSize: 25),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              buildInfoSharks(context, index);
                            },
                            icon: const Icon(Icons.arrow_forward_ios_rounded))
                      ],
                    ),
                  ),
                );
              }))),
    );
  }

  Future<dynamic> buildInfoSharks(BuildContext context, int index) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Center(
                child: Text(types[index]["type"]!,
                    style: const TextStyle(
                        fontFamily: "poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
              ),
              content: Text(
                types[index]["about"]!,
                style: const TextStyle(
                  fontFamily: "poppins",
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ));
  }
}

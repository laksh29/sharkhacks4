import 'package:flutter/material.dart';
import 'package:sharkhacks4/sharkInfo.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();
  final controller5 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final random = types.shuffle();
    final type = types[0]["type"];
    final info = types[0]["about"];
    // print(types[0]);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildSizedHeight(30.0),
            const Text(
              "Sharking Shark",
              style: TextStyle(
                  fontFamily: "vintage",
                  fontSize: 50,
                  color: Color(0xff0F2E4C)),
            ),
            const Text(
              "Know which shark you are!",
              style:
                  TextStyle(fontFamily: "Aesthetic", color: Color(0xff1C529E)),
            ),
            buildSizedHeight(30.0),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: controller1,
                        decoration: const InputDecoration(
                          labelText: "What is your height ?",
                          hintText: "What is your height ?",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: controller2,
                        decoration: const InputDecoration(
                          labelText: "Are you short tempered ?",
                          hintText: "Are you short tempered ?",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: controller3,
                        decoration: const InputDecoration(
                          labelText: "Are you diet concious?",
                          hintText: "Are you diet concious?",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: controller4,
                        decoration: const InputDecoration(
                          labelText: "Do people find you dangerous at times?",
                          hintText: "Do people find you dangerous at times?",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: controller5,
                        decoration: const InputDecoration(
                          labelText: "Do you have a long nose?",
                          hintText: "Do you have a long nose?",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // clear button
                        TextButton(
                            onPressed: () {
                              controller1.clear();
                              controller2.clear();
                              controller3.clear();
                              controller4.clear();
                              controller5.clear();
                            },
                            child: const Text("Clear")),
                        const SizedBox(width: 5),
                        // What am i ? button
                        ElevatedButton(
                            onPressed: () {
                              // Validate returns true if the form is valid, or false otherwise.
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                            title: const Center(
                                              child: Text(
                                                "You are a: ",
                                                style: TextStyle(
                                                    fontFamily: "poppins",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            actions: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    right: 10,
                                                    bottom: 20),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      types[0]["type"],
                                                      style: const TextStyle(
                                                          fontFamily: "poppins",
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 25),
                                                    ),
                                                    Text(
                                                      types[0]["about"],
                                                      style: const TextStyle(
                                                        fontFamily: "poppins",
                                                      ),
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ));
                                });
                                // // If the form is valid, display a snackbar. In the real world,
                                // // you'd often call a server or save the information in a database.
                                // ScaffoldMessenger.of(context).showSnackBar(
                                //   const SnackBar(content: Text('Processing Data')),
                                // );
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        const AlertDialog(
                                          title: Center(
                                            child: Text(
                                              "! ERROR !",
                                              style: TextStyle(
                                                  fontFamily: "poppins",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25),
                                            ),
                                          ),
                                          content: Text(
                                            "One or more input texts are empty",
                                            style: TextStyle(
                                                fontFamily: "poppins"),
                                            textAlign: TextAlign.center,
                                          ),
                                        ));
                              }
                            },
                            // if (controller1 == null) ;

                            // buildTypeShark(context);
                            // buildError(context);

                            child: const Text("What am I ??")),
                        const SizedBox(width: 20),
                      ],
                    )
                  ],
                ))
          ],
        ),
      )),
    );
  }

  // Future<dynamic> buildError(BuildContext context) {
  //   return showDialog(
  //       context: context,
  //       builder: (BuildContext context) => const AlertDialog(
  //             title: Center(
  //               child: Text(
  //                 "! ERROR !",
  //                 style: TextStyle(
  //                     fontFamily: "poppins",
  //                     fontWeight: FontWeight.bold,
  //                     fontSize: 25),
  //               ),
  //             ),
  //             content: Text(
  //               "One or more input texts are empty",
  //               style: TextStyle(fontFamily: "poppins"),
  //               textAlign: TextAlign.center,
  //             ),
  //           ));
  // }

  // Future<dynamic> buildTypeShark(BuildContext context) {
  //   return showDialog(
  //       context: context,
  //       builder: (BuildContext context) => AlertDialog(
  //             title: const Center(
  //               child: Text(
  //                 "You are a: ",
  //                 style: TextStyle(
  //                     fontFamily: "poppins",
  //                     fontWeight: FontWeight.bold,
  //                     fontSize: 20),
  //               ),
  //             ),
  //             actions: [
  //               Padding(
  //                 padding:
  //                     const EdgeInsets.only(left: 10, right: 10, bottom: 20),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   children: [
  //                     Text(
  //                       types[0]["type"],
  //                       style: const TextStyle(
  //                           fontFamily: "poppins",
  //                           fontWeight: FontWeight.bold,
  //                           fontSize: 25),
  //                     ),
  //                     Text(
  //                       types[0]["about"],
  //                       style: const TextStyle(
  //                         fontFamily: "poppins",
  //                       ),
  //                       textAlign: TextAlign.justify,
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ));
  // }
}

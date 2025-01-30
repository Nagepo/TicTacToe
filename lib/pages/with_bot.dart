import 'package:flutter/material.dart';
import 'package:tictactoe/logic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//TODO - Ingrandire e rimandare immagini da Ipad

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      home: BotPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BotPage extends StatefulWidget {
  const BotPage({super.key});

  @override
  State<BotPage> createState() => _BotPageState();
}

class _BotPageState extends State<BotPage> {
  bool fool = false;
  AssetImage baseSign = const AssetImage("assets/Gemini.png");

  Map<String, AssetImage> board = {
    "placeOne": const AssetImage("assets/Gemini.png"),
    "placeTwo": const AssetImage("assets/Gemini.png"),
    "placeThree": const AssetImage("assets/Gemini.png"),
    "placeFour": const AssetImage("assets/Gemini.png"),
    "placeFive": const AssetImage("assets/Gemini.png"),
    "placeSix": const AssetImage("assets/Gemini.png"),
    "placeSeven": const AssetImage("assets/Gemini.png"),
    "placeEight": const AssetImage("assets/Gemini.png"),
    "placeNine": const AssetImage("assets/Gemini.png"),
  };

  Icon base = const Icon(
    Icons.square,
    color: Colors.black,
  );
  Icon x = const Icon(
    Icons.cancel_presentation_sharp,
    color: Colors.orange,
  );
  Icon o = const Icon(
    Icons.circle_outlined,
    color: Colors.orange,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Expanded(
        child: AspectRatio(
          aspectRatio: 1,
          child: Card.outlined(
            color: Colors.black,
            shadowColor: Colors.black,
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (board["placeOne"] == baseSign) {
                                    board["placeOne"] = mossa();
                                  }
                                });
                              },
                              child: Image(
                                height: 120,
                                image: board["placeOne"]!,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (board["placeTwo"] == baseSign) {
                                    board["placeTwo"] = mossa();
                                  }
                                });
                              },
                              child: Image(
                                height: 120,
                                image: board["placeTwo"]!,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  fool = !fool;
                                });
                              },
                              child: const Image(
                                height: 120,
                                image: AssetImage("assets/O.png"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  fool = !fool;
                                });
                              },
                              child: const Image(
                                height: 120,
                                image: AssetImage("assets/O.png"),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  fool = !fool;
                                });
                              },
                              child: const Image(
                                height: 120,
                                image: AssetImage("assets/X.png"),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  fool = !fool;
                                });
                              },
                              child: const Image(
                                height: 120,
                                image: AssetImage("assets/O.png"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Card.outlined(
                        color: Colors.grey.shade600,
                        shadowColor: Colors.black,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              fool = !fool;
                            });
                          },
                          child: const Image(
                            height: 120,
                            image: AssetImage("assets/O.png"),
                          ),
                        ),
                      ),
                      Card.outlined(
                        color: Colors.grey.shade600,
                        shadowColor: Colors.black,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              fool = !fool;
                            });
                          },
                          child: const Image(
                            height: 120,
                            image: AssetImage("assets/O.png"),
                          ),
                        ),
                      ),
                      Card.outlined(
                        color: Colors.grey.shade600,
                        shadowColor: Colors.black,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              fool = !fool;
                            });
                          },
                          child: const Image(
                            height: 120,
                            image: AssetImage("assets/X.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

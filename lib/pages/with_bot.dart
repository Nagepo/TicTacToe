import 'package:flutter/material.dart';
import 'package:tictactoe/logic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/riverpod.dart';
import 'package:tictactoe/riverpod_model.dart';

//TODO - Ingrandire e rimandare immagini da Ipad

class BotPage extends ConsumerWidget {
  const BotPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: AspectRatio(
            aspectRatio: 1,
            child: Center(
              child: Card.outlined(
                color: Colors.black,
                shadowColor: Colors.black,
                //child: Center(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Card.outlined(
                          color: Colors.grey.shade600,
                          shadowColor: Colors.black,
                          child: GestureDetector(
                            onTap: () {
                              ref.read(ticProvider).mossa("placeOne");
                            },
                            child: Image(
                              height: 120,
                              image: AssetImage(
                                ref
                                    .watch(ticProvider)
                                    .board["placeOne"]
                                    .toString(),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            ref.read(ticProvider).mossa("placeTwo");
                          },
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: Image(
                              height: 120,
                              image: AssetImage(
                                ref
                                    .watch(ticProvider)
                                    .board["placeTwo"]
                                    .toString(),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: const Image(
                              height: 120,
                              image: AssetImage("assets/O.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: const Image(
                              height: 120,
                              image: AssetImage("assets/O.png"),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: const Image(
                              height: 120,
                              image: AssetImage("assets/X.png"),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: const Image(
                              height: 120,
                              image: AssetImage("assets/O.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: const Image(
                              height: 120,
                              image: AssetImage("assets/O.png"),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: const Image(
                              height: 120,
                              image: AssetImage("assets/O.png"),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
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
              //),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tictactoe/logic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/riverpod.dart';

//TODO - Ingrandire e rimandare immagini da Ipad

class BotPage extends ConsumerWidget {
  BotPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                              onTap: () {},
                              child: Image(
                                height: 120,
                                image: ref.watch(ticProvider).baseSign,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: GestureDetector(
                              onTap: () {},
                              child: Image(
                                height: 120,
                                image:
                                    ref.watch(ticProvider).board["placeTwo"]!,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card.outlined(
                            color: Colors.grey.shade600,
                            shadowColor: Colors.black,
                            child: GestureDetector(
                              onTap: () {},
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
                              onTap: () {},
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
                              onTap: () {},
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
                              onTap: () {},
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
                          onTap: () {},
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
                          onTap: () {},
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
                          onTap: () {},
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

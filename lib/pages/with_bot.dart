import 'package:flutter/material.dart';
import 'package:tictactoe/logic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/riverpod.dart';
import 'package:tictactoe/riverpod_model.dart';

//TODO - Ingrandire e rimandare immagini da Ipad

class BotPage extends ConsumerWidget {
  BotPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: AspectRatio(
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
                        onTap: () {},
                        child: Image(
                          height: 120,
                          image: ref.watch(ticProvider).baseSign,
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
                          image: ref.watch(ticProvider).board["placeTwo"]!,
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
                  ],
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
                          image: AssetImage("assets/X.png"),
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
                  ],
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
          //),
        ),
      ),
    );
  }
}

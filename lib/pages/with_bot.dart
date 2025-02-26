import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/riverpod.dart';
import 'package:tictactoe/riverpod_model.dart';

//TODO - Ingrandire e rimandare immagini da Ipad

class BotPage extends ConsumerWidget {
  const BotPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //this is the gesture detector builder for every pieces of the board
    GestureDetector boardbuilder(String x) {
      return GestureDetector(
        onTap: () {
          ref.read(ticProvider).botGame(x);
        },
        child: Card.outlined(
          color: Colors.grey.shade600,
          shadowColor: Colors.black,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.24,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image(
                height: 120,
                image: AssetImage(
                  ref.watch(ticProvider).board[x].toString(),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 209, 244),
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
                    TextButton(
                        onPressed: () {
                          ref.read(ticProvider).notLose();
                          ref.read(ticProvider).willWin();
                        },
                        child: Text("Print")),
                    Row(
                      children: [
                        boardbuilder("1"),
                        boardbuilder("2"),
                        boardbuilder("3"),
                      ],
                    ),
                    Row(
                      children: [
                        boardbuilder("4"),
                        boardbuilder("5"),
                        boardbuilder("6"),
                      ],
                    ),
                    Row(
                      children: [
                        boardbuilder("7"),
                        boardbuilder("8"),
                        boardbuilder("9"),
                      ],
                    ),
//TODO provare con uno switch per
//TODO mostrare o board o card vittoria
//TODO provare con while loop
                    if (ref.watch(ticProvider).whoWin != "")
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Card(
                            child: Column(
                              children: [
                                const Text("The winner is"),
                                Image(
                                  image:
                                      AssetImage(ref.watch(ticProvider).whoWin),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
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

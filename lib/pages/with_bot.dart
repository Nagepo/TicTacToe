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
    //this is the gesture detector builder for every pieces of the board
    GestureDetector boardbuilder(String x) {
      return GestureDetector(
        onTap: () {
          ref.read(ticProvider).mossa(x);
        },
        child: Card.outlined(
          color: Colors.grey.shade600,
          shadowColor: Colors.black,
          child: Image(
            height: 120,
            image: AssetImage(
              ref.watch(ticProvider).board[x].toString(),
            ),
          ),
        ),
      );
    }

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
                        boardbuilder("placeOne"),
                        boardbuilder("placeTwo"),
                        boardbuilder("placeThree"),
                      ],
                    ),
                    Row(
                      children: [
                        boardbuilder("placeFour"),
                        boardbuilder("placeFive"),
                        boardbuilder("placeSix"),
                      ],
                    ),
                    Row(
                      children: [
                        boardbuilder("placeSeven"),
                        boardbuilder("placeEight"),
                        boardbuilder("placeNine"),
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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/riverpod.dart';

// ignore: must_be_immutable
class PlayerPage extends ConsumerWidget {
  PlayerPage({super.key});
  String g = "O";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //this is the gesture detector builder for every pieces of the board
    GestureDetector boardbuilder(String x) {
      return GestureDetector(
        onTap: () {
          ref.read(ticProvider).move(x);
        },
        child: Image(
          height: 120,
          image: AssetImage(
            ref.watch(ticProvider).board[x].toString(),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 209, 244),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: const Center(
              child: Card.outlined(
                color: Colors.red,
                shadowColor: Colors.black,
                child: SizedBox(
                  width: 150,
                  child: Center(
                    child: Text(
                      "0:0",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: AspectRatio(
              aspectRatio: 1,
              child: GridView.count(
                primary: true,
                padding: const EdgeInsets.all(5),
                crossAxisCount: 3,
                children: <Widget>[
                  Container(
                    color: Colors.grey.shade600,
                    child: boardbuilder("1"),
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    child: boardbuilder("2"),
                  ),
                  Container(
                    color: Colors.grey.shade600,
                    child: boardbuilder("3"),
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    child: boardbuilder("4"),
                  ),
                  Container(
                    color: Colors.grey.shade600,
                    child: boardbuilder("5"),
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    child: boardbuilder("6"),
                  ),
                  Container(
                    color: Colors.grey.shade600,
                    child: boardbuilder("7"),
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    child: boardbuilder("8"),
                  ),
                  Container(
                    color: Colors.grey.shade600,
                    child: boardbuilder("9"),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.red.shade800,
            shadowColor: Colors.black,
            child: Center(
              child: Text(
                "It's $g turn",
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

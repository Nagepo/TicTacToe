import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoe/riverpod.dart';

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
              child: Center(
                child: Image(
                  height: 120,
                  image: AssetImage(
                    ref.watch(ticProvider).board[x].toString(),
                  ),
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
        child: ref.watch(ticProvider).whoWin == ""
            ? SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Card.outlined(
                    color: Colors.black,
                    shadowColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                boardbuilder("1"),
                                boardbuilder("2"),
                                boardbuilder("3"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                boardbuilder("4"),
                                boardbuilder("5"),
                                boardbuilder("6"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                boardbuilder("7"),
                                boardbuilder("8"),
                                boardbuilder("9"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "The winner is",
                    style: GoogleFonts.pixelifySans(
                      fontSize: 40,
                    ),
                  ),
                  Image(
                    image: AssetImage(ref.watch(ticProvider).whoWin),
                    width: MediaQuery.of(context).size.width * 0.80,
                  ),
                  Container(
                    child: ref.read(ticProvider).whoWin == ""
                        ? const Text("")
                        : Container(
                            child: ref.read(ticProvider).replay(context, "B"),
                          ),
                  ),
                ],
              ),
      ),
    );
  }
}

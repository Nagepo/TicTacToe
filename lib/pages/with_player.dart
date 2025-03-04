import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoe/riverpod.dart';

class PlayerPage extends ConsumerWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //this is the gesture detector builder for every pieces of the board
    GestureDetector boardbuilder(String x) {
      return GestureDetector(
        onTap: () {
          ref.read(ticProvider).move(x);
        },
        child: Card.outlined(
          color: Colors.grey.shade600,
          shadowColor: Colors.black,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.22,
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
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 30,
          color: Colors.orange,
        ),
        backgroundColor: const Color.fromARGB(255, 54, 209, 244),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Image.asset(
          "assets/Gemini.png",
          fit: BoxFit.contain,
          height: 100,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ref.read(ticProvider).reset();
            },
            icon: const Icon(
              Icons.refresh,
            ),
          ),
        ],
      ),
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
                            child: ref.read(ticProvider).replay(context, "P"),
                          ),
                  ),
                ],
              ),
      ),
    );
  }
}

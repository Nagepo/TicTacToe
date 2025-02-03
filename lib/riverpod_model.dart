import 'package:flutter/material.dart';

class RiverpodModel extends ChangeNotifier {
  //static String p2 = "";
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
  AssetImage baseSign = const AssetImage("assets/Gemini.png");
  bool player = false;

  bool winner() {
    const winningCombinations = [
      [0, 1, 2], // Row 1
      [3, 4, 5], // Row 2
      [6, 7, 8], // Row 3
      [0, 3, 6], // Column 1
      [1, 4, 7], // Column 2
      [2, 5, 8], // Column 3
      [0, 4, 8], // Diagonal 1
      [2, 4, 6] // Diagonal 2
    ];

    List y = [];

    for (AssetImage values in board.values) {
      if (values == const AssetImage("assets/O.png")) {
        y.add("O");
      } else if (values == const AssetImage("assets/X.png")) {
        y.add("x");
      } else {
        y.add("");
      }
    }

    for (var combination in winningCombinations) {
      int a = combination[0];
      int b = combination[1];
      int c = combination[2];
      if (y[a] != '' && y[a] == y[b] && y[a] == y[c]) {
        return true;
      }
    }
    return false;
  }

  void checkRisultato() {
    //TODO after setting the riverpod, start doing the tests
    //if (winner(x)) {
    //bool winner = player;
    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => WinnerPage()),);
  }
//}

  void mossa(String x) {
    if (board[x] != const AssetImage("assets/X.png") &&
        board[x] != const AssetImage("assets/O.png")) {
      board[x] = player
          ? const AssetImage("assets/X.png")
          : const AssetImage("assets/O.png");
      checkRisultato();
      turnChange();
    }
  }

  void turnChange() {
    player = !player;
  }
}

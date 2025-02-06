import 'package:flutter/material.dart';

class RiverpodModel extends ChangeNotifier {
  //static String p2 = "";
  Map<String, String> board = {
    "placeOne": "assets/Gemini.png",
    "placeTwo": "assets/Gemini.png",
    "placeThree": "assets/Gemini.png",
    "placeFour": "assets/Gemini.png",
    "placeFive": "assets/Gemini.png",
    "placeSix": "assets/Gemini.png",
    "placeSeven": "assets/Gemini.png",
    "placeEight": "assets/Gemini.png",
    "placeNine": "assets/Gemini.png",
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

    for (String values in board.values) {
      if (values == "assets/O.png") {
        y.add("O");
      } else if (values == "assets/X.png") {
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
    if (board[x] != "assets/X.png" && board[x] != "assets/O.png") {
      board[x] = player ? "assets/X.png" : "assets/O.png";
      checkRisultato();
      turnChange();
      notifyListeners();
    }
  }

  void turnChange() {
    player = !player;
  }
}

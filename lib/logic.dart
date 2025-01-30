import 'package:flutter/material.dart';
import 'package:tictactoe/pages/winner.dart';
import "pages/with_bot.dart";

bool player = false;
bool vittoria = false;

bool winner(Map x) {
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
  for (AssetImage values in x.values) {
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

AssetImage mossa() {
  final AssetImage sign =
      player ? AssetImage("assets/X.png") : AssetImage("assets/O.png");
  checkRisultato();
  turnChange();
  return sign;
}

void turnChange() {
  player = !player;
}

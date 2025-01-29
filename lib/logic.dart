import 'package:flutter/material.dart';
import 'package:tictactoe/pages/winner.dart';

bool player = false;
bool vittoria = false;

void checkRisultato() {
  if (vittoria) {
    bool winner = player;
    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => WinnerPage()),);
  }
}

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

import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tictactoe/pages/winner.dart';

class RiverpodModel extends ChangeNotifier {
  //static String p2 = "";
  Map<String, String> board = {
    "1": "assets/Invisible.png",
    "2": "assets/Invisible.png",
    "3": "assets/Invisible.png",
    "4": "assets/Invisible.png",
    "5": "assets/Invisible.png",
    "6": "assets/Invisible.png",
    "7": "assets/Invisible.png",
    "8": "assets/Invisible.png",
    "9": "assets/Invisible.png",
  };

  List winningCombinations = [
    [0, 1, 2], // Row 1
    [3, 4, 5], // Row 2
    [6, 7, 8], // Row 3
    [0, 3, 6], // Column 1
    [1, 4, 7], // Column 2
    [2, 5, 8], // Column 3
    [0, 4, 8], // Diagonal 1
    [2, 4, 6] // Diagonal 2
  ];

  bool player = false;
  String whoWin = "";
  Random random = Random();

  void boardReset() {
    for (String value in board.values) {
      board[value] = "assets / Invisible.png";
    }
  }

  List situation() {
    List y = [];

    for (String values in board.values) {
      if (values == "assets/O.png") {
        y.add("O");
      } else if (values == "assets/X.png") {
        y.add("X");
      } else {
        y.add("");
      }
    }

    return y;
  }

  List<int> notLose() {
    List yN = situation();
    List<int> zN = [];

    for (var combination in winningCombinations) {
      int a = combination[0];
      int b = combination[1];
      int c = combination[2];
      if (yN[a] == "O" && yN[a] == yN[b] && yN[c] == "") {
        zN.add(c);
      } else if (yN[b] == "O" && yN[b] == yN[c] && yN[a] == "") {
        zN.add(a);
      } else if (yN[c] == "O" && yN[c] == yN[a] && yN[b] == "") {
        zN.add(b);
      }
    }
    return zN;
  }

  List<int> willWin() {
    List yW = situation();
    List<int> zW = [];

    for (var combination in winningCombinations) {
      int a = combination[0];
      int b = combination[1];
      int c = combination[2];
      if (yW[a] == "X" && yW[a] == yW[b] && yW[c] == "") {
        zW.add(c);
      } else if (yW[b] == "X" && yW[b] == yW[c] && yW[a] == "") {
        zW.add(a);
      } else if (yW[c] == "X" && yW[c] == yW[a] && yW[b] == "") {
        zW.add(b);
      }
    }
    return zW;
  }

  void winner() {
    List wW = situation();

    for (var combination in winningCombinations) {
      int a = combination[0];
      int b = combination[1];
      int c = combination[2];
      if (wW[a] != '' && wW[a] == wW[b] && wW[a] == wW[c]) {
        if (wW[a] == "O") {
          whoWin = "assets/O.png";
        } else {
          whoWin = "assets/X.png";
        }
      }
    }
  }

  void showIcon() {
    for (MapEntry entry in board.entries) {
      if (entry.value != "assets/O.png" && entry.value != "assets/X.png") {
        board[entry.key] =
            player ? "assets/O_transparent.png" : "assets/X_transparent.png";
      }
    }
  }

  void move(String x) {
    showIcon();
    if (board[x] != "assets/X.png" && board[x] != "assets/O.png") {
      board[x] = player ? "assets/X.png" : "assets/O.png";
      winner();
      turnChange();
      notifyListeners();
    }
  }

  void botGame(String x) {
    if (board[x] != "assets/X.png" && board[x] != "assets/O.png") {
      board[x] = player ? "assets/X.png" : "assets/O.png";
      winner();
      turnChange();
      notifyListeners();
      Timer(const Duration(seconds: 1), () {
        botMove();
      });
    }
  }

  String botChoice() {
    List<int> zL = notLose();
    List<int> zW = willWin();
    List res = [];
    if (zL.isNotEmpty || zW.isNotEmpty) {
      List<int> commonElements =
          zL.where((element) => zW.contains(element)).toList();
      if (commonElements.isNotEmpty) {
        int randomIndex = random.nextInt(commonElements.length);
        int randomNumber = commonElements[randomIndex];
        return randomNumber.toString();
      } else if (zL.isEmpty) {
        int randomIndex = random.nextInt(zW.length);
        int randomNumber = zW[randomIndex];
        return randomNumber.toString();
      } else if (zW.isEmpty) {
        int randomIndex = random.nextInt(zL.length);
        int randomNumber = zL[randomIndex];
        return randomNumber.toString();
      }
    }
    for (var entry in board.entries) {
      if (entry.value == "assets/Invisible.png") {
        res.add(int.parse(entry.key));
      }
    }
    int randomIndex = random.nextInt(res.length);
    int randomNumber = res[randomIndex];
    return randomNumber.toString();
  }

  void botMove() {
    while (true) {
      String y = botChoice();
      if (board[y] != "assets/X.png" && board[y] != "assets/O.png") {
        board[y] = player ? "assets/X.png" : "assets/O.png";
        winner();
        turnChange();
        notifyListeners();
        break;
      } else {
        continue;
      }
    }
  }

  void turnChange() {
    player = !player;
  }
}

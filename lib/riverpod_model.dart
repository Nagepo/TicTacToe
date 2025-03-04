import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tictactoe/main.dart';
import 'package:tictactoe/pages/with_bot.dart';
import 'package:tictactoe/pages/with_player.dart';

class RiverpodModel extends ChangeNotifier {
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

  bool can = true;
  bool player = false; //Player switch
  String whoWin = ""; //Winner
  Random random = Random();

  void reset() {
    //reset the board and the winner
    board = {
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
    whoWin = "";

    notifyListeners();
  }

  List situation() {
    //build a list of the board situation
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
    //looking at the danger position
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
    //looking at the good position for the win
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
    // look if someone wins
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
    if (whoWin != "" || situation().isEmpty) {
      Timer(
        const Duration(seconds: 3),
        () => reset(),
      );
    }
  }

  replay(BuildContext context, x) {
    Timer(
      const Duration(seconds: 2),
      () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Question'),
              content: const Text('Do you want to play again?'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(),
                      ),
                    );
                  },
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            x == "B" ? const BotPage() : const PlayerPage(),
                      ),
                    );
                  },
                  child: const Text('Yes'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void move(String x) {
    if (board[x] != "assets/X.png" && board[x] != "assets/O.png") {
      board[x] = player ? "assets/X.png" : "assets/O.png";
      winner();
      player = !player;
      notifyListeners();
    }
  }

  void botGame(String x) {
    if (can == true) {
      if (board[x] != "assets/X.png" && board[x] != "assets/O.png") {
        board[x] = "assets/O.png";
        can = false;
        winner();
        notifyListeners();
        Timer(
          const Duration(seconds: 1),
          () => botMove(),
        );
      }
    }
  }

  void botMove() {
    String y = botChoice();
    board[y] = "assets/X.png";
    winner();
    notifyListeners();
    can = true;
  }

  String botChoice() {
    List<int> zL = notLose();
    List<int> zW = willWin();
    List sit = situation();
    List res = [];
    if (zL.isNotEmpty || zW.isNotEmpty) {
      List<int> commonElements =
          zL.where((element) => zW.contains(element)).toList();
      if (commonElements.isNotEmpty) {
        int randomIndex = random.nextInt(commonElements.length);
        int randomNumber = commonElements[randomIndex] + 1;
        return randomNumber.toString();
      } else if (zL.isEmpty) {
        int randomIndex = random.nextInt(zW.length);
        int randomNumber = zW[randomIndex] + 1;
        return randomNumber.toString();
      } else if (zW.isEmpty) {
        int randomIndex = random.nextInt(zL.length);
        int randomNumber = zL[randomIndex] + 1;
        return randomNumber.toString();
      }
    }
    if (situation().isNotEmpty || whoWin == "") {
      res = sit
          .asMap()
          .entries
          .where((entry) => entry.value == "")
          .map((entry) => entry.key)
          .toList();
      int randomIndex = random.nextInt(res.length);
      int randomNumber = res[randomIndex] + 1;
      return randomNumber.toString();
    } else {
      return "";
    }
  }
}

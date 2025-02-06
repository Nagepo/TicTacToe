import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/riverpod.dart';
import 'package:tictactoe/riverpod_model.dart';

class WinnerPage extends ConsumerWidget {
  // ignore: prefer_const_constructors_in_immutables
  WinnerPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "The winner",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "IS",
              style: GoogleFonts.getFont('Lato'),
            ),
            Text(
              "Winner image",
              style: GoogleFonts.pixelifySans(fontSize: 40),
            ),
            //TODO - Aggiungere l'immagine del segno vittorioso che
            //TODO uccide il segno perdente in base a chi vince
            Image(
              height: 200,
              image: AssetImage(
                ref.watch(ticProvider).whoWin,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

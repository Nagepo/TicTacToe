import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WinnerPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WinnerPage extends StatefulWidget {
  const WinnerPage({super.key});

  @override
  State<WinnerPage> createState() => _WinnerPageState();
}

class _WinnerPageState extends State<WinnerPage> {
  @override
  Widget build(BuildContext context) {
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
            const Image(
              height: 200,
              image: AssetImage("assets/Gemini.png"),
            ),
          ],
        ),
      ),
    );
  }
}

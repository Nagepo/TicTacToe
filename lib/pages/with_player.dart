import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        //textTheme: GoogleFonts.dotoTextTheme()
      ),
      home: const PlayerPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          Text("Set point"),
          Text("Blank space"),
          Text("Game table"),
          Text("Sign of the turn"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoe/pages/with_bot.dart';
import 'package:tictactoe/pages/with_player.dart';

//TODO 1 - Pulire codice

void main() {
  //this is for the device app orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const ProviderScope(child: MyApp()));
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  buttonPacking(String x, IconData y) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          y,
          color: Colors.black,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          x,
          style: GoogleFonts.pixelifySans(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 209, 244),
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Welcome to",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "THE",
                style: GoogleFonts.getFont('Lato'),
              ),
              Text(
                "TicTacToe",
                style: GoogleFonts.pixelifySans(fontSize: 40),
              ),
              //this is an AI generated image for the nice homescreen
              const Image(
                height: 200,
                image: AssetImage("assets/Gemini.png"),
              ),
              //this column is for the button section
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const PlayerPage(),
                          ),
                        );
                      },
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.orange),
                        elevation: WidgetStatePropertyAll(4),
                      ),
                      child: buttonPacking("Play with a friend", Icons.man),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const BotPage(),
                          ),
                        );
                      },
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.orange),
                        elevation: WidgetStatePropertyAll(4),
                      ),
                      child: buttonPacking("Play with a bot", Icons.computer),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.orange),
                        elevation: WidgetStatePropertyAll(4),
                      ),
                      child: buttonPacking("Options", Icons.list),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

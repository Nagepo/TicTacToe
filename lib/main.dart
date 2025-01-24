import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoe/pages/with_bot.dart';
import 'package:tictactoe/pages/with_player.dart';

//TODO 0- Cambiare root di Github in modo da sincronizzare codice
//TODO 1- Pulire codice
//TODO 2- Risolvere problema assets
//TODO 3- Provare a mettere sfondo in moviemento, o trovare sfondo bello
//TODO 4- Trovare armocromia per app totale

//TODO extra - CONTROLLARE SE FUNZIONA IL GITHUB WORLD

void main() {
  //this is for the device app orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        //textTheme: GoogleFonts.dotoTextTheme()
      ),
      home: const MyHomePage(),
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
  TextStyle titleText = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    fontFamily: "Fantasy",
  );

  buttonPacking(x, y) {
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
          "$x",
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
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.center,
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
            const SizedBox(
              height: 175,
            ),
            //TODO risolvere asset
            /*const Image(
              image: AssetImage("assets/gemini.png"),
            ),*/
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PlayerPage(),
                  ),
                );
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.orange),
              ),
              child: buttonPacking("Play with a friend", Icons.man),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BotPage(),
                  ),
                );
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.orange),
              ),
              child: buttonPacking("Play with a bot", Icons.computer),
            ),
            OutlinedButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.orange),
              ),
              child: buttonPacking("Options", Icons.list),
            ),
          ],
        ),
      ),
    );
  }
}

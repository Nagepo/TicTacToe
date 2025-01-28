import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //scaffoldBackgroundColor: Colors.white,
          //textTheme: GoogleFonts.dotoTextTheme()
          ),
      home: PlayerPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PlayerPage extends StatelessWidget {
  PlayerPage({super.key});
  String g = "O";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Positioned(
                top: -50.0,
                child: SizedBox(
                  width: 150,
                  child: Card.outlined(
                    color: Colors.red.shade800,
                    shadowColor: Colors.black,
                    child: const Center(
                      child: Text(
                        "0:0",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Card.outlined(
                color: Colors.black,
                shadowColor: Colors.black,
                elevation: 10,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(0),
                  crossAxisCount: 3,
                  children: <Widget>[
                    Card.outlined(
                      color: Colors.grey.shade600,
                      shadowColor: Colors.black,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Image(
                          height: 120,
                          image: AssetImage("assets/X.png"),
                        ),
                      ),
                    ),
                    Card.outlined(
                      color: Colors.grey.shade600,
                      shadowColor: Colors.black,
                      elevation: 4,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Image(
                          height: 120,
                          image: AssetImage("assets/O.png"),
                        ),
                      ),
                    ),
                    Card.outlined(
                      color: Colors.grey.shade600,
                      shadowColor: Colors.black,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Image(
                          height: 120,
                          image: AssetImage("assets/O.png"),
                        ),
                      ),
                    ),
                    Card.outlined(
                      color: Colors.grey.shade600,
                      shadowColor: Colors.black,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Image(
                          height: 120,
                          image: AssetImage("assets/O.png"),
                        ),
                      ),
                    ),
                    Card.outlined(
                      color: Colors.grey.shade600,
                      shadowColor: Colors.black,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Image(
                          height: 120,
                          image: AssetImage("assets/X.png"),
                        ),
                      ),
                    ),
                    Card.outlined(
                      color: Colors.grey.shade600,
                      shadowColor: Colors.black,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Image(
                          height: 120,
                          image: AssetImage("assets/O.png"),
                        ),
                      ),
                    ),
                    Card.outlined(
                      color: Colors.grey.shade600,
                      shadowColor: Colors.black,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Image(
                          height: 120,
                          image: AssetImage("assets/O.png"),
                        ),
                      ),
                    ),
                    Card.outlined(
                      color: Colors.grey.shade600,
                      shadowColor: Colors.black,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Image(
                          height: 120,
                          image: AssetImage("assets/O.png"),
                        ),
                      ),
                    ),
                    Card.outlined(
                      color: Colors.grey.shade600,
                      shadowColor: Colors.black,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Image(
                          height: 120,
                          image: AssetImage("assets/X.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Card.outlined(
                color: Colors.red.shade800,
                shadowColor: Colors.black,
                child: Center(
                  child: Text(
                    "It's $g turn",
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

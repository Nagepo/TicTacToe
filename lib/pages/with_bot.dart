import 'package:flutter/material.dart';

//TODO - Ingrandire e rimandare immagini da Ipad

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BotPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BotPage extends StatefulWidget {
  const BotPage({super.key});

  @override
  State<BotPage> createState() => _BotPageState();
}

class _BotPageState extends State<BotPage> {
  bool fool = false;
  Icon base = const Icon(
    Icons.square,
    color: Colors.black,
  );
  Icon x = const Icon(
    Icons.cancel_presentation_sharp,
    color: Colors.orange,
  );
  Icon o = const Icon(
    Icons.circle_outlined,
    color: Colors.orange,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Card.outlined(
                color: Colors.grey.shade600,
                shadowColor: Colors.black,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      fool = !fool;
                    });
                  },
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
                  onTap: () {
                    setState(() {
                      fool = !fool;
                    });
                  },
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
                  onTap: () {
                    setState(() {
                      fool = !fool;
                    });
                  },
                  child: const Image(
                    height: 120,
                    image: AssetImage("assets/O.png"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Card.outlined(
                color: Colors.grey.shade600,
                shadowColor: Colors.black,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      fool = !fool;
                    });
                  },
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
                  onTap: () {
                    setState(() {
                      fool = !fool;
                    });
                  },
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
                  onTap: () {
                    setState(() {
                      fool = !fool;
                    });
                  },
                  child: const Image(
                    height: 120,
                    image: AssetImage("assets/O.png"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Card.outlined(
                color: Colors.grey.shade600,
                shadowColor: Colors.black,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      fool = !fool;
                    });
                  },
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
                  onTap: () {
                    setState(() {
                      fool = !fool;
                    });
                  },
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
                  onTap: () {
                    setState(() {
                      fool = !fool;
                    });
                  },
                  child: const Image(
                    height: 120,
                    image: AssetImage("assets/X.png"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

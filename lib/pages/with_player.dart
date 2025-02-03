import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: must_be_immutable
class PlayerPage extends ConsumerWidget {
  PlayerPage({super.key});
  String g = "O";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: const Center(
              child: Card.outlined(
                color: Colors.red,
                shadowColor: Colors.black,
                child: SizedBox(
                  width: 150,
                  child: Center(
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: AspectRatio(
              aspectRatio: 1,
              child: GridView.count(
                primary: true,
                padding: const EdgeInsets.all(5),
                crossAxisCount: 3,
                children: <Widget>[
                  Container(
                    color: Colors.grey.shade600,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Image(
                        height: 120,
                        image: AssetImage("assets/X.png"),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Image(
                        height: 120,
                        image: AssetImage("assets/O.png"),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade600,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Image(
                        height: 120,
                        image: AssetImage("assets/O.png"),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Image(
                        height: 120,
                        image: AssetImage("assets/O.png"),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade600,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Image(
                        height: 120,
                        image: AssetImage("assets/X.png"),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Image(
                        height: 120,
                        image: AssetImage("assets/O.png"),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade600,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Image(
                        height: 120,
                        image: AssetImage("assets/O.png"),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Image(
                        height: 120,
                        image: AssetImage("assets/O.png"),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade600,
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
          Card(
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
        ],
      ),
    );
  }
}

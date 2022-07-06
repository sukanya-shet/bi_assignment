import 'package:flutter/material.dart';
import 'card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 200, 0),
        body: Stack(children: <Widget>[
          const Positioned(
              left: 20,
              top: 20,
              child: Image(
                image: AssetImage('assets/background.png'),
              )),
          Positioned(
            left: 25,
            bottom: 40,
            child: contentCard(),
          ),
        ]),
      ),
    );
  }
}

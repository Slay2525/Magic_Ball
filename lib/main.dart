import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Color.fromARGB(255, 255, 28, 28),
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int BallNumber = Random().nextInt(5);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  BallNumber = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset('images/ball$BallNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

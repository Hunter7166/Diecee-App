import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Dicee',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.blue[600],
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButton = 1;
  int rightButton = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  rotate();
                },
                child: Image.asset('images/dice$leftButton.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                 rotate();
                },
                child: Image.asset('images/dice$rightButton.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void rotate() {
    setState(() {
      rightButton = Random().nextInt(6) + 1;
      leftButton = Random().nextInt(6) + 1;

    });
  }
}

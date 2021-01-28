import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  void generateRandom() {
    setState(() {
      rightDice = Random().nextInt(6) + 1;
      leftDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Text(
            'Click the die to roll!',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  generateRandom();
                },
                child: Image.asset('images/dice$leftDice.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  generateRandom();
                },
                child: Image.asset('images/dice$rightDice.png'),
              ),
            )
          ],
        )
      ]),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

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
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static int sides = 6;
  int leftDiceNumber;
  int rightDiceNumber;

  _DicePageState() {
    leftDiceNumber = randomDiceNumber();
    rightDiceNumber = randomDiceNumber();
  }

  int randomDiceNumber() {
    return Random().nextInt(sides) + 1;
  }

  void setBothDiceToRandom() {
    leftDiceNumber = randomDiceNumber();
    rightDiceNumber = randomDiceNumber();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        setBothDiceToRandom();
                      });
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png'))),
            Expanded(
                child: TextButton(
              onPressed: () {
                setState(() {
                  setBothDiceToRandom();
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            )),
          ],
        ),
      ),
    );
  }
}

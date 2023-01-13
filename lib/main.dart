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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var randDiceOne = Random().nextInt(5) + 1;
    var randDiceTwo = Random().nextInt(5) + 1;

    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(child: Image.asset('images/dice$randDiceOne.png')),
            Expanded(child: Image.asset('images/dice$randDiceTwo.png')),
          ],
        ),
      ),
    );
  }
}

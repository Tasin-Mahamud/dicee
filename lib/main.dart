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
          centerTitle: true,
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
  int tas = 1;
  int tas2 = 1;

  void Dice_selector() {
    setState(() {
      tas = Random().nextInt(6) + 1;
      tas2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                child: Image.asset("images/dice$tas.png"),
                onPressed: () {
                  Dice_selector();
                }),
          ),
          Expanded(
              child: TextButton(
            child: Image.asset("images/dice$tas2.png"),
            onPressed: () {
              setState(() {
                Dice_selector();
              });
            },
          )),
        ],
      ),
    );
  }
}

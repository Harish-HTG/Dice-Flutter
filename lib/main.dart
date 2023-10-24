import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: const Text('Dice Roller'),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: const DicePage(),
        ),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Dice Number: $diceNumber',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Image.asset(
            'assets/dice$diceNumber.png',
            width: 200.0,
            height: 200.0,
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: rollDice,
            child: const Text(
              'Roll the Dice',
              style:
              TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

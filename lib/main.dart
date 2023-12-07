import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan.shade800,
        appBar: AppBar(
          title: const Text('Dice Game App'),
          backgroundColor: Colors.cyan.shade800,
          foregroundColor: Colors.white,
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
  int firstDiceNumber = 1;
  int secondDiceNumber = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding:  EdgeInsets.all(100.0),
            child:  
            Text(
              'Roll The Dice',
              style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Pacifico",
                  ),
            ),
            
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                    onPressed: () {
                      //0,1,2,3,4,5 -> 6 means start with Number 0. so the maximum should be 5 if counted from 0
                      setState(() {
                        firstDiceNumber = Random().nextInt(6) + 1;
                      });
                      print('Is Pressed');
                    },
                    child: Image.asset('images/dice$firstDiceNumber.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          secondDiceNumber = Random().nextInt(6) + 1;
                          print('Is Pressed');
                        });
                      },
                      child: Image.asset('images/dice$secondDiceNumber.png')),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

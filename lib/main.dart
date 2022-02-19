import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dice')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),

    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override

  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(

        children: <Widget>[
          Expanded(
            child:
            TextButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6)+1;
                });
                print("Left Button got pressed");
              },
            ),
          ),
          Expanded(
            child:
            TextButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: ()
              {
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
              },
            ),
          )

        ],
      ),
    );
  }
}







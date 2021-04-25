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
  int number = 5;
  int number2 = 1;
  @override
  void increase() {
    setState(() {
      number = Random().nextInt(6) + 1;
      number2 = Random().nextInt(6) + 1;
    });
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              increase();
              },
            child: Image.asset('images/dice$number.png'),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
             increase();
            },
            child: Image.asset('images/dice$number2.png'),
          ),
        ),
      ]),
    );
  }
}




import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dicee',
          ),
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
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftdicenumber = Random(1).nextInt(6);
                  print(leftdicenumber);
                });
              },
              child: Image.asset("images/dice$leftdicenumber.png"),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightdicenumber = Random(1).nextInt(6);
                });
              },
              child: Image.asset("images/dice$rightdicenumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}

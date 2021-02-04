import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(RectangleColor());
}

const _PageColors = [
  Colors.teal,
  Colors.orange,
  Colors.pinkAccent,
  Colors.blueAccent,
  Colors.yellow,
  Colors.greenAccent,
  Colors.purpleAccent,
  Colors.red
];

class RectangleColor extends StatefulWidget {
  RectangleColor({Key key}) : super(key: key);
  @override
  _RectangleColorState createState() => _RectangleColorState();
}

class _RectangleColorState extends State<RectangleColor> {
  var _color;

  _generateRandomColor() {
    return _PageColors[Random().nextInt(_PageColors.length)];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: _color,
          child: TextButton(
            onPressed: () {
              setState(() {
                _color = _generateRandomColor();
              });
            },
            child: Center(
              child: Text(
                "Hello I am rectangle",
              ),
            ),
          ),
        ),
      ),
    );
  }
}

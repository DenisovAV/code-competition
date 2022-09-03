import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter app'),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 50, top: 30),
        child: Stack(
          children: List.generate(
            3,
            (i) => Transform.rotate(
              alignment: Alignment.topLeft,
              angle: pi / 6 * i,
              child: Text(
                '   Flutter Vikings 2022',
                style: TextStyle(fontSize: 10.0 * (i + 1)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

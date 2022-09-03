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

const _colors = [Colors.red, Colors.yellow, Colors.green];

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _colors
              .map(
                (e) => CircleAvatar(
                  radius: 50,
                  backgroundColor: e,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

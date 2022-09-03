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
      body: Container(
        child: Text(
          'This is Gradient',
          style: TextStyle(color: Colors.white),
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 1.0),
          ),
        ),
      ),
    );
  }
}

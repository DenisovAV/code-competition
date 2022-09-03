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
      body: Center(
        child: Text(
          "I'm 30, bold and italic",
          style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

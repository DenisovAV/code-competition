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
      body: ListView.builder(
        itemCount: 11,
        itemBuilder: (_, i) => Padding(
          padding: EdgeInsets.only(left: i * 10),
          child: ListTile(
            title: Text(
              'Padding is ${i * 10}',
            ),
          ),
        ),
      ),
    );
  }
}

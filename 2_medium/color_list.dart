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

const _colors = [Colors.red, Colors.amber, Colors.yellow, Colors.green];

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter app'),
        ),
        body: ListView.builder(
          itemBuilder: (_, i) => ListTile(
            leading: CircleAvatar(
              child: Text('${i + 1}'),
              backgroundColor: _colors[i],
            ),
            title: Text('Title ${i + 1}'),
            subtitle: Text('Subtitle ${i + 1}'),
          ),
          itemCount: 4,
        ));
  }
}

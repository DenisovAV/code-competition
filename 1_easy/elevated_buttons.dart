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
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('First Elevated Button'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text('Second Elevated Button'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amberAccent),
              )),
          ElevatedButton(
              onPressed: () {},
              child: Text('Third Elevated Button'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              )),
        ]),
      ),
    );
  }
}

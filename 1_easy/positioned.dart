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
        child: Container(
          color: Colors.purple,
          height: 300,
          width: 300,
          child: Stack(children: [
            Positioned(
              top: 20,
              left: 30,
              child: Text(
                '20 from top 30 from left',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 10,
              child: Text(
                '30 from bottom 10 from right',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Text(
                'Square 300x300',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

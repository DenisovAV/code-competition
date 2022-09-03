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
      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(8, (i) => Cell(index: i)),
      ),
    );
  }
}

class Cell extends StatelessWidget {
  final int index;

  const Cell({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: PhysicalModel(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue,
        elevation: 10,
        shadowColor: Colors.black,
        child: Center(
          child: Text(
            '$index',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

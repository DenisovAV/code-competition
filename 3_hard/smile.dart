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
      body: Center(
        child: CustomPaint(
          size: Size(200, 200),
          painter: SmilePainter(),
        ),
      ),
    );
  }
}

class SmilePainter extends CustomPainter {
  SmilePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);

    final paint = Paint()..color = Colors.green;
    canvas.drawCircle(center, radius, paint);

    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(
            center.dx,
            center.dy + (radius / 4),
          ),
          radius: radius / 3),
      pi / 12,
      5 * pi / 6,
      false,
      smilePaint,
    );

    final eyePaint = Paint()..color = Colors.black;

    canvas.drawCircle(Offset(center.dx - radius / 3, center.dy - radius / 3), 20, eyePaint);
    canvas.drawCircle(Offset(center.dx + radius / 3, center.dy - radius / 3), 20, eyePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

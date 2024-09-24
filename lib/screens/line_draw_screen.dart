import 'package:flutter/material.dart';

class LineDrawScreen extends StatelessWidget {
  const LineDrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Line Draw'),
      ),
      body: Center(
        child: CustomPaint(
          size: const Size(300, 300),
          painter: LinePainter(),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5;

    // Draw a line from top-left to bottom-right
    Offset startPoint = const Offset(0, 0);
    Offset endPoint = Offset(size.width, size.height);
    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

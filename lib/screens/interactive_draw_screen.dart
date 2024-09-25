import 'package:flutter/material.dart';

class InteractiveDrawScreen extends StatefulWidget {
  const InteractiveDrawScreen({super.key});

  @override
  State<InteractiveDrawScreen> createState() => _InteractiveDrawScreenState();
}

class _InteractiveDrawScreenState extends State<InteractiveDrawScreen> {
  Color currentColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Example'),
      ),
      body: GestureDetector(
        onTap: () {
          print('yes');
          setState(() {
            currentColor =
                currentColor == Colors.green ? Colors.orange : Colors.green;
          });
        },
        child: CustomPaint(
          size: const Size(300, 300),
          painter: RectanglePainter(color: currentColor),
        ),
      ),
    );
  }
}

class RectanglePainter extends CustomPainter {
  final Color color;

  RectanglePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = 5;

    canvas.drawRect(const Rect.fromLTWH(50, 50, 200, 100), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

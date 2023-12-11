import 'dart:math';

import 'package:custom_paint_playground/painters/line_painter_screen.dart';
import 'package:flutter/material.dart';

class RectPainterScreen extends StatefulWidget {
  const RectPainterScreen({super.key});

  @override
  State<RectPainterScreen> createState() => _RectPainterScreenState();
}

class _RectPainterScreenState extends State<RectPainterScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: context.screenWidth * .8,
        height: context.screenWidth * .8,
        color: Colors.white,
        child: Transform.rotate(
          angle: pi / 4,
          child: CustomPaint(
            foregroundPainter: RectanglePainter(),
          ),
        ),
      ),
    );
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7;

    canvas.drawRect(
      Rect.fromPoints(
        Offset(size.width * .2, size.height * .2),
        Offset(size.width * .8, size.height * .8),
      ),
      paint,
    );

    canvas.drawLine(
      Offset(
        size.width * .2,
        size.height * .2,
      ),
      Offset(
        size.width * .8,
        size.height * .8,
      ),
      paint,
    );

    canvas.drawLine(
      Offset(
        size.width * .8,
        size.height * .2,
      ),
      Offset(
        size.width * .2,
        size.height * .8,
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

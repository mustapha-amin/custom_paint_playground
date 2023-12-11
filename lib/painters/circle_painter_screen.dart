import 'dart:math';

import 'package:custom_paint_playground/painters/line_painter_screen.dart';
import 'package:custom_paint_playground/widgets/drawingboard.dart';
import 'package:flutter/material.dart';

class CirclePainterScreen extends StatefulWidget {
  const CirclePainterScreen({super.key});

  @override
  State<CirclePainterScreen> createState() => _CirclePainterScreenState();
}

class _CirclePainterScreenState extends State<CirclePainterScreen> {
  @override
  Widget build(BuildContext context) {
    return DrawingBoard(
      child: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              foregroundPainter: CirclePainter(),
            ),
            Transform.rotate(
              angle: pi / 4,
              child: const Icon(
                Icons.arrow_back_rounded,
                size: 30,
                color: Colors.black,
              ),
            )
          ],
        ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()..color = Colors.green;
    final paint2 = Paint()..color = Colors.red;
    final paint3 = Paint()..color = Colors.blue;
    final paint4 = Paint()..color = Colors.purple;
    final paint5 = Paint()..color = Colors.yellow;

    final offset = Offset(size.width * .5, size.height * .5);

    canvas.drawCircle(offset, 100, paint1);
    canvas.drawCircle(offset, 80, paint2);
    canvas.drawCircle(offset, 60, paint3);
    canvas.drawCircle(offset, 40, paint4);
    canvas.drawCircle(offset, 20, paint5);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

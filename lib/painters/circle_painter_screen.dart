import 'package:custom_paint_playground/painters/line_painter_screen.dart';
import 'package:flutter/material.dart';

class CirclePainterScreen extends StatefulWidget {
  const CirclePainterScreen({super.key});

  @override
  State<CirclePainterScreen> createState() => _CirclePainterScreenState();
}

class _CirclePainterScreenState extends State<CirclePainterScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: context.screenWidth * .8,
        height: context.screenWidth * .8,
        color: Colors.white,
        child: CustomPaint(
          foregroundPainter: CirclePainter(),
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

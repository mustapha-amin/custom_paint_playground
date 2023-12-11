import 'package:custom_paint_playground/painters/line_painter_screen.dart';
import 'package:flutter/material.dart';

class RRectPainterScreen extends StatefulWidget {
  const RRectPainterScreen({super.key});

  @override
  State<RRectPainterScreen> createState() => _RRectPainterScreenState();
}

class _RRectPainterScreenState extends State<RRectPainterScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: context.screenWidth * .8,
        height: context.screenWidth * .8,
        color: Colors.white,
        child: CustomPaint(
          foregroundPainter: RRectanglePainter(),
        ),
      ),
    );
  }
}

class RRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 10;

    final rect = Rect.fromPoints(
      Offset(size.width * .2, size.height * .2),
      Offset(size.width * .8, size.height * .8),
    );

    canvas.drawRRect(
      RRect.fromRectXY(rect, 2, 50),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

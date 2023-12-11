import 'package:custom_paint_playground/widgets/drawingboard.dart';
import 'package:flutter/material.dart';

class LinePainterScreen extends StatefulWidget {
  const LinePainterScreen({super.key});

  @override
  State<LinePainterScreen> createState() => _LinePainterScreenState();
}

class _LinePainterScreenState extends State<LinePainterScreen> {
  @override
  Widget build(BuildContext context) {
    return DrawingBoard(
      child: CustomPaint(
        foregroundPainter: LinePainter(),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.amber
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      Offset(size.width * .1, size.height * .5),
      Offset(size.width * .9, size.height * .5),
      paint,
    );

    canvas.drawLine(
      Offset(size.width * .5, size.height * .1),
      Offset(size.width * .5, size.height * .9),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

extension BuildContextExtension on BuildContext {
  Size get _screenSizes => MediaQuery.of(this).size;

  double get screenWidth => _screenSizes.width;

  double get screenHeight => _screenSizes.height;
}

import 'package:custom_paint_playground/widgets/drawingboard.dart';
import 'package:flutter/material.dart';

class TrianglePainterScreen extends StatelessWidget {
  const TrianglePainterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawingBoard(
      child: CustomPaint(
        foregroundPainter: TrianglePainter(),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.green
      ..colorFilter = const ColorFilter.mode(Colors.blue, BlendMode.dstATop)
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    final path1 = Path();
    final path2 = Path();
    final path3 = Path();
    final path4 = Path();

    path1.moveTo(size.width * .5, size.height * .2);
    path1.lineTo(size.width * .1, size.height * .8);
    path1.lineTo(size.width * .9, size.height * .8);
    path1.close();

    path2.moveTo(size.width * .5, size.height * .8);
    path2.lineTo(size.width * .1, size.height * .2);
    path2.lineTo(size.width * .9, size.height * .2);
    path2.close();

    path3.moveTo(size.width * .9, size.height * .5);
    path3.lineTo(size.width * .3, size.height * .2);
    path3.lineTo(size.width * .3, size.height * .8);
    path3.close();

    path4.moveTo(size.width * .1, size.height * .5);
    path4.lineTo(size.width * .7, size.height * .2);
    path4.lineTo(size.width * .7, size.height * .8);
    path4.close();

    canvas.drawPath(path1, paint);
    paint.color = Colors.blue;
    canvas.drawPath(path2, paint);
    paint.color = Colors.brown;
    canvas.drawPath(path3, paint);
    paint.color = Colors.red;
    canvas.drawPath(path4, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

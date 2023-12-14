import 'package:flutter/material.dart';

import '../widgets/drawingboard.dart';

class ArcPainterScreen extends StatefulWidget {
  const ArcPainterScreen({super.key});

  @override
  State<ArcPainterScreen> createState() => _ArcPainterScreenState();
}

class _ArcPainterScreenState extends State<ArcPainterScreen> {
  @override
  Widget build(BuildContext context) {
    return DrawingBoard(
      child: CustomPaint(
        foregroundPainter: ArcPainter(),
      ),
    );
  }
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 6
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(size.width * .8, size.height * .1);
    path.arcToPoint(
      Offset(size.width * .6, size.height * .2),
      radius: const Radius.circular(35),
      clockwise: false,
    );
    path.arcToPoint(
      Offset(size.width * .3, size.height * .7),
      radius: const Radius.circular(200),
      clockwise: false,
    );
    path.lineTo(size.width * .1, size.height * .9);

    path.moveTo(size.width * .8, size.height * .1);
    path.lineTo(size.width * .9, size.height * .05);
    path.lineTo(size.width * .8, size.height * .2);
    path.arcToPoint(
      Offset(size.width * .5, size.height * .7),
      radius: Radius.circular(180),
    );
    path.lineTo(size.width * .05, size.height);
    path.moveTo(size.width * .6, size.height * .35);
    path.arcToPoint(
      Offset(size.width * .45, size.height * .6),
      radius: Radius.circular(200),
      clockwise: false,
    );
    path.moveTo(size.width * .76, size.height * .28);
    path.addOval(Rect.fromCircle(
      center: Offset(size.width * .74, size.height * .13),
      radius: 5,
    ));

    path.moveTo(size.width * .46, size.height * .72);
    path.lineTo(size.width * .42, size.height);
    path.moveTo(size.width * .6, size.height * .6);
    path.lineTo(size.width * .8, size.height * .7);
    path.lineTo(size.width * .9, size.height * .66);
    path.moveTo(size.width * .8, size.height * .7);
    path.lineTo(size.width * .9, size.height * .72);
    path.moveTo(size.width * .8, size.height * .7);
    path.lineTo(size.width * .86, size.height * .8);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

import 'dart:math';

import 'package:custom_paint_playground/painters/line_painter_screen.dart';
import 'package:flutter/material.dart';

class DrawingBoard extends StatelessWidget {
  Widget? child;
  DrawingBoard({this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: context.screenWidth * .8,
        height: context.screenWidth * .8,
        color: Colors.white,
        child: Transform.rotate(
          angle: pi / 4,
          child: child,
        ),
      ),
    );
  }
}
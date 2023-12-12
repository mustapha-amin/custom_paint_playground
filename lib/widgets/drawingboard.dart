import 'package:flutter/material.dart';
import '../helpers.dart';

class DrawingBoard extends StatelessWidget {
  Widget? child;
  DrawingBoard({this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: context.screenWidth * .8,
        height: context.screenWidth * .8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}

import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Size get _screenSizes => MediaQuery.of(this).size;

  double get screenWidth => _screenSizes.width;

  double get screenHeight => _screenSizes.height;
}

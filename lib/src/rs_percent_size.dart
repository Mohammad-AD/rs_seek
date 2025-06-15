import 'package:flutter/material.dart';

extension RsSizeExtension on BuildContext {
  double percentWidth(double percent) =>
      MediaQuery.of(this).size.width * percent;

  double percentHeight(double percent) =>
      MediaQuery.of(this).size.height * percent;

  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
}
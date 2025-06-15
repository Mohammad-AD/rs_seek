import 'package:flutter/material.dart';

/// Extension on [BuildContext] to provide methods for calculating sizes
extension RsSizeExtension on BuildContext {
  /// Returns a percentage of the screen width.
  double percentWidth(double percent) =>
      MediaQuery.of(this).size.width * percent;

  /// Returns a percentage of the screen height.
  double percentHeight(double percent) =>
      MediaQuery.of(this).size.height * percent;

  /// Returns the screen width.
  double get screenWidth => MediaQuery.of(this).size.width;

  /// Returns the screen height.
  double get screenHeight => MediaQuery.of(this).size.height;
}

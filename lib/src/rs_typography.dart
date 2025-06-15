import 'package:flutter/material.dart';

import 'rs_when.dart';

/// Typography utility class for responsive text sizes.
class RsTypography {
  /// displayLarge: Used for large display text.
  static double displayLarge(BuildContext context) =>
      32 * MediaQuery.textScaleFactorOf(context) * _sizeFactor(context);

  /// displayMedium: Used for medium display text.
  static double displayMedium(BuildContext context) =>
      28 * MediaQuery.textScaleFactorOf(context) * _sizeFactor(context);

  /// headline: Used for large headlines.
  static double headline(BuildContext context) =>
      24 * MediaQuery.textScaleFactorOf(context) * _sizeFactor(context);

  /// title : Used for titles.
  static double title(BuildContext context) =>
      20 * MediaQuery.textScaleFactorOf(context) * _sizeFactor(context);

  /// body: Used for body text.
  static double body(BuildContext context) =>
      16 * MediaQuery.textScaleFactorOf(context) * _sizeFactor(context);

  /// caption: Used for captions or smaller text.
  static double caption(BuildContext context) =>
      12 * MediaQuery.textScaleFactorOf(context) * _sizeFactor(context);

  static double _sizeFactor(BuildContext context) {
    return rsWhen(
      context: context,
      xs: 0.9,
      sm: 0.95,
      md: 1.0,
      lg: 1.05,
      xl: 1.1,
    );
  }
}

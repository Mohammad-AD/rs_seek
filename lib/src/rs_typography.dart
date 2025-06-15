import 'package:flutter/material.dart';
import 'rs_when.dart';

class RsTypography {
  static double displayLarge(BuildContext context) =>
      32 * MediaQuery.textScaleFactorOf(context) * _sizeFactor(context);
      
  static double displayMedium(BuildContext context) =>
      28 * MediaQuery.textScaleFactorOf(context) * _sizeFactor(context);
      
  static double headline(BuildContext context) =>
      24 * MediaQuery.textScaleFactorOf(context) * _sizeFactor(context);
      
  static double title(BuildContext context) =>
      20 * MediaQuery.textScaleFactorOf(context) * _sizeFactor(context);
      
  static double body(BuildContext context) =>
      16 * MediaQuery.textScaleFactorOf(context) * _sizeFactor(context);
      
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
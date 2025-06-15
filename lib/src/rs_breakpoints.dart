import 'package:flutter/material.dart';

/// Enum representing the different responsive breakpoints.
enum RsBreakpoint { xs, sm, md, lg, xl }

/// A utility class for handling responsive breakpoints in Flutter applications.
class RsBreakpoints {
  static const double xs = 480;
  static const double sm = 768;
  static const double md = 1024;
  static const double lg = 1440;
  static const double xl = double.infinity;

  /// Returns the current breakpoint based on the screen width.
  static RsBreakpoint of(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < xs) return RsBreakpoint.xs;
    if (width < sm) return RsBreakpoint.sm;
    if (width < md) return RsBreakpoint.md;
    if (width < lg) return RsBreakpoint.lg;
    return RsBreakpoint.xl;
  }

  /// checks if orientation is portrait
  static bool isPortrait(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.portrait;
}

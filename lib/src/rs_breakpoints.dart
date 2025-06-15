import 'package:flutter/material.dart';

/// Enum representing the different responsive breakpoints.
enum RsBreakpoint {
  /// Extra small devices (phones, less than 480px)
  xs,

  /// Small devices (tablets, 480px to 768px)
  sm,

  /// Medium devices (desktops, 768px to 1024px)
  md,

  /// Large devices (large desktops, 1024px to 1440px)
  lg,

  /// Extra large devices (extra large desktops, 1440px and above)
  xl,
}

/// A utility class for handling responsive breakpoints in Flutter applications.
class RsBreakpoints {
  /// extra small devices (phones, less than 480px)
  static const double xs = 480;

  /// Small devices (tablets, 480px to 768px)
  static const double sm = 768;

  /// Medium devices (desktops, 768px to 1024px)
  static const double md = 1024;

  /// Large devices (large desktops, 1024px to 1440px)
  static const double lg = 1440;

  /// Extra large devices (extra large desktops, 1440px and above)
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

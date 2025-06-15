import 'package:flutter/material.dart';

import 'rs_breakpoints.dart';
import 'rs_when.dart';

/// Extension on [BuildContext] to provide responsive utilities.
extension RsContext on BuildContext {
  /// Returns true if the current breakpoint is extra small (mobile).
  bool get isMobile => RsBreakpoints.of(this).index <= RsBreakpoint.sm.index;

  /// Returns true if the current breakpoint is medium (tablet).
  bool get isTablet => RsBreakpoints.of(this) == RsBreakpoint.md;

  /// Returns true if the current breakpoint is large (desktop).
  bool get isDesktop => RsBreakpoints.of(this).index >= RsBreakpoint.lg.index;

  /// returns padding from the top of the screen.
  double get safeTop => MediaQuery.of(this).padding.top;

  /// returns padding from the bottom of the screen.
  double get safeBottom => MediaQuery.of(this).padding.bottom;

  /// returns the padding from screen
  EdgeInsets get responsivePadding => EdgeInsets.symmetric(
    horizontal: rsWhen(
      context: this,
      xs: 16.0,
      sm: 24.0,
      md: 32.0,
      lg: 48.0,
      xl: 64.0,
    ),
    vertical: rsWhen(
      context: this,
      xs: 8.0,
      sm: 12.0,
      md: 16.0,
      lg: 20.0,
      xl: 24.0,
    ),
  );
}

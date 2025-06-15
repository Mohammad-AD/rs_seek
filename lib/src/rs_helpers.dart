import 'package:flutter/material.dart';
import 'rs_breakpoints.dart';
import 'rs_when.dart';

extension RsContext on BuildContext {
  bool get isMobile => RsBreakpoints.of(this).index <= RsBreakpoint.sm.index;
  bool get isTablet => RsBreakpoints.of(this) == RsBreakpoint.md;
  bool get isDesktop => RsBreakpoints.of(this).index >= RsBreakpoint.lg.index;
  
  double get safeTop => MediaQuery.of(this).padding.top;
  double get safeBottom => MediaQuery.of(this).padding.bottom;
  
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
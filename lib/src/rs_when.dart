import 'package:flutter/material.dart';

import 'rs_breakpoints.dart';

/// Returns a value based on the current breakpoint.
T rsWhen<T>({
  required BuildContext context,
  required T xs,
  T? sm,
  T? md,
  T? lg,
  T? xl,
}) {
  final bp = RsBreakpoints.of(context);
  switch (bp) {
    case RsBreakpoint.xs:
      return xs;
    case RsBreakpoint.sm:
      return sm ?? xs;
    case RsBreakpoint.md:
      return md ?? sm ?? xs;
    case RsBreakpoint.lg:
      return lg ?? md ?? sm ?? xs;
    case RsBreakpoint.xl:
      return xl ?? lg ?? md ?? sm ?? xs;
  }
}

import 'package:flutter/material.dart';

import 'rs_breakpoints.dart';

/// A widget that applies a specific aspect ratio based on the device orientation.
class RsAspectRatio extends StatelessWidget {
  /// Creates a widget that applies a specific aspect ratio based on the device orientation.
  final Widget child;

  /// The aspect ratio to use in portrait mode.
  final double portraitRatio;

  /// The aspect ratio to use in landscape mode.
  final double landscapeRatio;

  /// Creates a [RsAspectRatio] widget.
  const RsAspectRatio({
    required this.child,
    this.portraitRatio = 4 / 3,
    this.landscapeRatio = 16 / 9,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ratio = RsBreakpoints.isPortrait(context)
        ? portraitRatio
        : landscapeRatio;
    return AspectRatio(aspectRatio: ratio, child: child);
  }
}

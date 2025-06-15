import 'package:flutter/material.dart';

import 'rs_when.dart';

/// A responsive container widget that centers its child and applies
class RsContainer extends StatelessWidget {
  /// contains a child widget and applies
  final Widget child;

  /// a maximum width and optional padding based on the screen size.
  final double maxWidth;

  /// padding to be applied around the child widget.
  final EdgeInsets? padding;

  /// Creates a [RsContainer] widget.
  const RsContainer({
    required this.child,
    this.maxWidth = 1280,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Padding(
          padding:
              padding ??
              EdgeInsets.symmetric(
                horizontal: rsWhen(
                  context: context,
                  xs: 16.0,
                  sm: 24.0,
                  md: 32.0,
                  lg: 48.0,
                  xl: 64.0,
                ),
              ),
          child: child,
        ),
      ),
    );
  }
}

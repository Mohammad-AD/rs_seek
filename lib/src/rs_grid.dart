import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rs_seek/rs_seek.dart';

/// A responsive grid layout widget that adapts to different screen sizes
class RsGridColumn {
  /// The number of columns this widget should span in the grid.
  final int span;

  /// The child widget to display in this column.
  final Widget child;

  /// extra small breakpoint span
  final int? xs;

  /// small breakpoint span
  final int? sm;

  /// medium breakpoint span
  final int? md;

  /// large breakpoint span
  final int? lg;

  /// extra large breakpoint span
  final int? xl;

  /// Creates a new [RsGridColumn].
  RsGridColumn({
    required this.span,
    required this.child,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
  });
}

/// A responsive grid layout widget that arranges its children in a grid format
class RsGrid extends StatelessWidget {
  /// list of [RsGridColumn] children to be displayed in the grid.
  final List<RsGridColumn> children;

  /// The number of columns in the grid. Default is 12.
  final int columns;

  /// The spacing between grid items. Default is 8.0.
  final double spacing;

  /// The maximum width of the grid. If null, it will take the full available width.
  final double? maxWidth;

  /// Creates a new [RsGrid].
  const RsGrid({
    required this.children,
    this.columns = 12,
    this.spacing = 8.0,
    this.maxWidth,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = maxWidth != null
            ? min(maxWidth!, constraints.maxWidth)
            : constraints.maxWidth;

        return Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: children.map((col) {
            final span = _getResponsiveSpan(context, col);
            final width = (availableWidth / columns) * span - spacing;
            return SizedBox(width: width, child: col.child);
          }).toList(),
        );
      },
    );
  }

  int _getResponsiveSpan(BuildContext context, RsGridColumn col) {
    final bp = RsBreakpoints.of(context);
    switch (bp) {
      case RsBreakpoint.xs:
        return col.xs ?? col.span;
      case RsBreakpoint.sm:
        return col.sm ?? col.xs ?? col.span;
      case RsBreakpoint.md:
        return col.md ?? col.sm ?? col.xs ?? col.span;
      case RsBreakpoint.lg:
        return col.lg ?? col.md ?? col.sm ?? col.xs ?? col.span;
      case RsBreakpoint.xl:
        return col.xl ?? col.lg ?? col.md ?? col.sm ?? col.xs ?? col.span;
    }
  }
}

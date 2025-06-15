import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rs_seek/rs_seek.dart';

class RsGridColumn {
  final int span;
  final Widget child;
  final int? xs;
  final int? sm;
  final int? md;
  final int? lg;
  final int? xl;

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

class RsGrid extends StatelessWidget {
  final List<RsGridColumn> children;
  final int columns;
  final double spacing;
  final double? maxWidth;

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

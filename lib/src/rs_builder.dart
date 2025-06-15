import 'package:flutter/widgets.dart';

import 'rs_breakpoints.dart';

/// A builder that provides responsive widgets based on the current breakpoint and orientation.
typedef RsWidgetBuilder =
    Widget Function(
      BuildContext context,
      RsBreakpoint breakpoint,
      Orientation orientation,
    );

/// A widget that builds its child based on the current responsive breakpoint and orientation.
class ResponsiveBuilder extends StatelessWidget {
  /// Creates a [ResponsiveBuilder] that uses the provided [builder] function to build its child.
  final RsWidgetBuilder builder;

  /// Creates a [ResponsiveBuilder] with the specified [builder].
  const ResponsiveBuilder({required this.builder, super.key});

  @override
  Widget build(BuildContext context) {
    final bp = RsBreakpoints.of(context);
    final orientation = MediaQuery.of(context).orientation;
    return builder(context, bp, orientation);
  }
}

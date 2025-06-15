import 'package:flutter/widgets.dart';
import 'rs_breakpoints.dart';

typedef RsWidgetBuilder = Widget Function(
  BuildContext context,
  RsBreakpoint breakpoint,
  Orientation orientation,
);

class ResponsiveBuilder extends StatelessWidget {
  final RsWidgetBuilder builder;
  const ResponsiveBuilder({required this.builder, super.key});

  @override
  Widget build(BuildContext context) {
    final bp = RsBreakpoints.of(context);
    final orientation = MediaQuery.of(context).orientation;
    return builder(context, bp, orientation);
  }
}
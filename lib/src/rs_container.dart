import 'package:flutter/material.dart';
import 'rs_when.dart';

class RsContainer extends StatelessWidget {
  final Widget child;
  final double maxWidth;
  final EdgeInsets? padding;

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
          padding: padding ?? EdgeInsets.symmetric(
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
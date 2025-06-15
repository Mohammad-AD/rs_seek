import 'package:flutter/material.dart';
import 'package:rs_seek/rs_seek.dart';

class TypographyShowcase extends StatelessWidget {
  const TypographyShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return RsContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Display Large',
            style: TextStyle(fontSize: RsTypography.displayLarge(context)),
          ),
          SizedBox(height: RsSpacing.md),
          Text(
            'Headline',
            style: TextStyle(fontSize: RsTypography.headline(context)),
          ),
          SizedBox(height: RsSpacing.md),
          Text(
            'Body Text',
            style: TextStyle(fontSize: RsTypography.body(context)),
          ),
          SizedBox(height: RsSpacing.md),
          Text(
            'Caption',
            style: TextStyle(fontSize: RsTypography.caption(context)),
          ),
          SizedBox(height: RsSpacing.lg),
          ResponsiveBuilder(
            builder: (context, breakpoint, orientation) {
              return Text(
                'Current Breakpoint: ${breakpoint.name}'
                '\nOrientation: ${orientation.name}'
                '\nDevice Type: ${context.isMobile
                    ? 'Mobile'
                    : context.isTablet
                    ? 'Tablet'
                    : 'Desktop'}',
                style: TextStyle(fontSize: RsTypography.body(context)),
              );
            },
          ),
        ],
      ),
    );
  }
}

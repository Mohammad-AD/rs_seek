import 'package:flutter/material.dart';
import 'package:rs_seek/rs_seek.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Responsive App',
          style: TextStyle(fontSize: RsTypography.title(context)),
        ),
      ),
      body: RsContainer(
        child: SingleChildScrollView(
          padding: context.responsivePadding,
          child: Column(
            children: [
              _buildHeroSection(context),
              SizedBox(height: RsSpacing.xl),
              _buildFeatureGrid(context),
              SizedBox(height: RsSpacing.xxl),
              _buildTestimonialSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return RsAspectRatio(
      portraitRatio: 1,
      landscapeRatio: 2,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.indigo]),
        ),
        child: Center(
          child: Text(
            'Welcome!',
            style: TextStyle(
              fontSize: RsTypography.displayMedium(context),
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureGrid(BuildContext context) {
    return RsGrid(
      columns: context.isMobile ? 4 : 12,
      spacing: RsSpacing.md,
      children: [
        RsGridColumn(
          span: context.isMobile ? 4 : 3,
          child: _FeatureCard(icon: Icons.phone_android, title: 'Mobile First'),
        ),
        RsGridColumn(
          span: context.isMobile ? 4 : 3,
          child: _FeatureCard(icon: Icons.tablet_mac, title: 'Tablet Ready'),
        ),
        RsGridColumn(
          span: context.isMobile ? 4 : 3,
          child: _FeatureCard(
            icon: Icons.desktop_windows,
            title: 'Desktop Friendly',
          ),
        ),
        RsGridColumn(
          span: context.isMobile ? 4 : 3,
          child: _FeatureCard(
            icon: Icons.screen_rotation,
            title: 'Orientation Aware',
          ),
        ),
      ],
    );
  }

  Widget _buildTestimonialSection(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, breakpoint, orientation) {
        final isVertical = orientation == Orientation.portrait;
        return Flex(
          direction: isVertical ? Axis.vertical : Axis.horizontal,
          children: [
            Expanded(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(RsSpacing.md),
                  child: Column(
                    children: [
                      Icon(Icons.star, size: RsSpacing.xl),
                      SizedBox(height: RsSpacing.sm),
                      Text(
                        "This package saved me weeks of development time!",
                        style: TextStyle(fontSize: RsTypography.body(context)),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (!isVertical) SizedBox(width: RsSpacing.md),
            if (isVertical) SizedBox(height: RsSpacing.md),
            Expanded(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(RsSpacing.md),
                  child: Column(
                    children: [
                      Icon(Icons.thumb_up, size: RsSpacing.xl),
                      SizedBox(height: RsSpacing.sm),
                      Text(
                        "Made my app look professional on all devices",
                        style: TextStyle(fontSize: RsTypography.body(context)),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const _FeatureCard({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(RsSpacing.md),
        child: Column(
          children: [
            Icon(icon, size: RsSpacing.xl),
            SizedBox(height: RsSpacing.sm),
            Text(
              title,
              style: TextStyle(fontSize: RsTypography.caption(context)),
            ),
          ],
        ),
      ),
    );
  }
}

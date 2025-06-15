import 'package:flutter/material.dart';
import 'package:rs_seek/rs_seek.dart';

class ResponsiveGallery extends StatelessWidget {
  final List<String> imageUrls;

  const ResponsiveGallery({required this.imageUrls, super.key});

  @override
  Widget build(BuildContext context) {
    return RsGrid(
      columns: rsWhen(context: context, xs: 2, sm: 3, md: 4, lg: 5, xl: 6),
      spacing: RsSpacing.sm,
      children: imageUrls.map((url) {
        return RsGridColumn(
          span: 1,
          child: RsAspectRatio(
            portraitRatio: 1,
            landscapeRatio: 1.5,
            child: Image.network(url, fit: BoxFit.cover),
          ),
        );
      }).toList(),
    );
  }
}

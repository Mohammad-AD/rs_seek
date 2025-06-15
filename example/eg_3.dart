import 'package:flutter/material.dart';
import 'package:rs_seek/rs_seek.dart';

class ResponsiveForm extends StatelessWidget {
  const ResponsiveForm({super.key});

  @override
  Widget build(BuildContext context) {
    return RsContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Us',
            style: TextStyle(fontSize: RsTypography.headline(context)),
          ),
          SizedBox(height: RsSpacing.lg),
          RsGrid(
            columns: context.isMobile ? 1 : 2,
            spacing: RsSpacing.md,
            children: [
              RsGridColumn(
                span: 1,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              RsGridColumn(
                span: 1,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              RsGridColumn(
                span: 1,
                xs: 1,
                sm: 1,
                md: 2,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              RsGridColumn(
                span: 1,
                xs: 1,
                sm: 1,
                md: 2,
                child: TextField(
                  maxLines: context.isMobile ? 3 : 5,
                  decoration: InputDecoration(
                    labelText: 'Message',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              RsGridColumn(
                span: 1,
                xs: 1,
                sm: 1,
                md: 2,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Submit'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

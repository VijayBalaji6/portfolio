import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_styles.dart';

class PageTitles extends StatelessWidget {
  const PageTitles({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.headlineMedium,
    );
  }
}

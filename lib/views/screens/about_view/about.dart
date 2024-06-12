import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/styles/app_styles.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppTitles.about, style: AppStyles.headlineMedium),
      ],
    );
  }
}

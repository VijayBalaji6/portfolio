import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/views/common_widgets/page_titles.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PageTitles(
          title: AppTitles.about,
        ),
      ],
    );
  }
}

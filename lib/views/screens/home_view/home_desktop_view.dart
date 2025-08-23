import 'package:flutter/material.dart';
import 'package:portfolio/views/screens/home_view/widgets/home_widgets.dart';

class HomeDesktopView extends StatelessWidget {
  const HomeDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 50,
      children: [
        HomeWidgets.buildSocialContact(),
        HomeWidgets.buildWelcomeNote(),
        HomeWidgets.resumeHomeButton()
      ],
    );
  }
}

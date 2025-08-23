import 'package:flutter/material.dart';

import 'package:portfolio/views/screens/home_view/widgets/home_widgets.dart';

class HomeMobileView extends StatelessWidget {
  const HomeMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        HomeWidgets.buildSocialContact(),
        HomeWidgets.buildWelcomeNote(),
        HomeWidgets.resumeHomeButton()
      ],
    );
  }
}

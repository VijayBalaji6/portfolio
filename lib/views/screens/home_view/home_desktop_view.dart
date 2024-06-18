import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/views/screens/home_view/widgets/home_widgets.dart';

class HomeDesktopView extends StatelessWidget {
  const HomeDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        HomeWidgets.buildSocialContact(),
        SizedBox(
          height: 0.05.sh,
        ),
        HomeWidgets.buildWelcomeNote(),
        SizedBox(
          height: 0.03.sh,
        ),
        HomeWidgets.homeActionButtons()
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/styles/responsive_view.dart';
import 'package:portfolio/views/screens/work_view/work_desktop_view.dart';
import 'package:portfolio/views/screens/work_view/work_mobile_view.dart';

class WorkView extends StatelessWidget {
  const WorkView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(
      desktop: WorkDesktopView(),
      mobile: WorkMobileView(),
    );
  }
}

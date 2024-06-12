import 'package:flutter/material.dart';
import 'package:portfolio/responsive/responsive_layout.dart';
import 'package:portfolio/views/screens/home_view/home_desktop_view.dart';
import 'package:portfolio/views/screens/home_view/home_mobile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      desktop: HomeDesktopView(),
      mobile: HomeMobileView(),
    );
  }
}

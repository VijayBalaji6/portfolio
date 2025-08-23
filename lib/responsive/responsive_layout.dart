import 'package:flutter/material.dart';
import 'package:portfolio/responsive/empty_view.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= 900) {
      return desktop;
    } else {
      return mobile;
    }
  }
}

class ResponsiveView extends StatelessWidget {
  const ResponsiveView({
    super.key,
    this.mobile = const EmptyView(),
    this.desktop = const EmptyView(),
    this.tablet,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Builder(builder: (context) {
      if (screenWidth >= 900) {
        return desktop;
      } else if (screenWidth >= 600) {
        return tablet ?? mobile;
      } else {
        return mobile;
      }
    });
  }
}

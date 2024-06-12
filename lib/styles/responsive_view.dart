import 'package:flutter/material.dart';

class ResponsiveView extends StatelessWidget {
  const ResponsiveView({
    super.key,
    required this.desktop,
    required this.mobile,
  });
  final Widget desktop;
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width >= 1080) {
      return desktop;
    } else {
      return mobile;
    }
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/themes/app_colors.dart';
import 'package:portfolio/views/portfolio.dart';
import 'package:portfolio/views/splash/widget/animated_image_container.dart';
import 'package:portfolio/views/splash/widget/animation_loader.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => PortFolio(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AnimatedImageContainer(),
            SizedBox(
              height: .05.sh,
            ),
            const AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/themes/app_colors.dart';
import 'package:portfolio/views/portfolio.dart';
import 'package:portfolio/views/splash/widget/animated_image_container.dart';
import 'package:portfolio/views/splash/widget/animation_loader.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const PortFolio(),
        ));
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AnimatedImageContainer(),
            const AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}

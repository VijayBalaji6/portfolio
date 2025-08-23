import 'package:flutter/material.dart';
import 'package:portfolio/constants/asserts_constants.dart';
import 'package:portfolio/themes/app_colors.dart';

class AnimatedImageContainer extends StatelessWidget {
  const AnimatedImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(colors: [
          AppColors.pinkAccent,
          AppColors.blue,
        ]),
        boxShadow: const [
          BoxShadow(
            color: AppColors.pink,
            offset: Offset(-2, 0),
            blurRadius: 20,
          ),
          BoxShadow(
            color: AppColors.blue,
            offset: Offset(2, 0),
            blurRadius: 20,
          ),
        ],
      ),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Image.asset(
          Assets.splashImage,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}

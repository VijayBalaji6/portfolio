import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_styles.dart';
import 'package:portfolio/themes/app_colors.dart';

class SkillsWidget {
  static Text skillsTitle() => Text(
        "Skills",
        style: AppStyles.headlineMedium,
      );

  static Widget techSkillWidget({
    required String skillAssetName,
    required String skillName,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          height: 115,
          width: 115,
          decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                skillAssetName,
                height: 50,
                width: 50,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                skillName,
                style: const TextStyle(fontSize: 18, color: AppColors.white),
              )
            ],
          ),
        ),
      );
}

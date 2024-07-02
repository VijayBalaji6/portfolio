import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/styles/app_styles.dart';

class SkillsWidget {
  static Text skillsTitle() => Text(
        "Skills",
        style: AppStyles.headlineMedium,
      );

  static Widget techSkillWidget({required String skillName}) => Image.asset(
        skillName,
        height: .10.sh,
        width: .10.sh,
      );
}

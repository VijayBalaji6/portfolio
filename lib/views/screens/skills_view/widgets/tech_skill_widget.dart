// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/helper/extention.dart';
import 'package:portfolio/models/skills.dart';
import 'package:portfolio/themes/app_colors.dart';

class TechSkillWidget extends StatelessWidget {
  const TechSkillWidget({
    super.key,
    required this.techSkill,
  });

  final Skill techSkill;

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: radius * 2,
        // height: radius * 2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.lightGrey,
          border: Border.all(color: AppColors.lightGrey, width: 2.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              techSkill.skillAssert,
              fit: BoxFit.cover,
              // height: 50,
              // width: 50,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              techSkill.skillName.toCapitalized(),
              style: const TextStyle(color: AppColors.white),
            )
          ],
        ));
  }
}

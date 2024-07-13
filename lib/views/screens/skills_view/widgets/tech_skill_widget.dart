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
    return CircleAvatar(
      backgroundColor: AppColors.lightGrey,
      radius: 75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            techSkill.skillAssert,
            height: 50,
            width: 50,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            techSkill.skillName.toCapitalized(),
            style: const TextStyle(fontSize: 18, color: AppColors.white),
          )
        ],
      ),
    );
  }
}

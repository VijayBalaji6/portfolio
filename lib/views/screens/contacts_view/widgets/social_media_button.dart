// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/styles/app_styles.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton(
      {super.key,
      required this.assetIcon,
      this.onTap,
      required this.socialName,
      this.mobileView});
  final String assetIcon;
  final VoidCallback? onTap;
  final String socialName;
  final bool? mobileView;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: mobileView == true
          ? SvgPicture.asset(
              assetIcon,
              height: 30,
              width: 30,
            )
          : Row(
              children: [
                SvgPicture.asset(
                  assetIcon,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 0.001.sw,
                ),
                Text(
                  socialName,
                  style: AppStyles.labelMedium,
                ),
              ],
            ),
    );
  }
}

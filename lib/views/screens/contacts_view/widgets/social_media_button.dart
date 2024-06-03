// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton(
      {super.key,
      required this.assetIcon,
      this.onTap,
      required this.socialName});
  final String assetIcon;
  final VoidCallback? onTap;
  final String socialName;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(
            assetIcon,
            height: 10.sp,
            width: 10.sp,
          ),
          SizedBox(
            width: 0.001.sw,
          ),
          Text(
            socialName,
            style: TextStyle(fontSize: 4.sp, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

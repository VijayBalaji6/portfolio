// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSocialContactButton extends StatelessWidget {
  const HomeSocialContactButton({
    super.key,
    required this.assetIcon,
    this.onTap,
  });
  final String assetIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20.sp),
      child: Image.asset(
        assetIcon,
        height: 35,
        width: 35,
      ),
    );
  }
}

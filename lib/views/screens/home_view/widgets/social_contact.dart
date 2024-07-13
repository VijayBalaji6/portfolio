import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
      child: SvgPicture.asset(
        assetIcon,
        height: 35,
        width: 35,
      ),
    );
  }
}

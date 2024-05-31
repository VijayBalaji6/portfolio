import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants/asserts_constants.dart';
import 'package:portfolio/themes/app_colors.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({
    super.key,
  });

  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}

class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value),
          child: Container(
            height: 0.2.sh,
            width: 0.2.sh,
            padding: EdgeInsets.all(0.001.sh),
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
              child: SvgPicture.asset(
                Assets.splashImage,
                height: 100,
                width: 100,
              ),
            ),
          ),
        );
      },
    );
  }
}

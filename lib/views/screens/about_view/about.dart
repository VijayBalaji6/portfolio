import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "About",
          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

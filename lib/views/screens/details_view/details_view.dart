import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constants/asserts_constants.dart';
import 'package:portfolio/styles/app_styles.dart';
import 'package:portfolio/themes/app_colors.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 0.03.sh,
        ),
        Text(
          "Portfolio Made With",
          style: AppStyles.headlineMedium,
        ),
        SizedBox(
          height: 0.03.sh,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            detailsIcons(
              name: 'Flutter',
              assertName: AboutAssets.flutterImage,
            ),
            const SizedBox(
              width: 15,
            ),
            detailsIcons(
              name: 'Firebase',
              assertName: AboutAssets.firebaseImage,
            ),
            const SizedBox(
              width: 15,
            ),
            detailsIcons(
              name: 'Github-Actions',
              assertName: AboutAssets.githubImage,
            ),
            const SizedBox(
              width: 15,
            ),
            detailsIcons(
              name: 'Figma',
              assertName: AboutAssets.figmaImage,
            ),
          ],
        ),
        SizedBox(
          height: 0.05.sh,
        ),
        Container(
          decoration: const BoxDecoration(
              color: AppColors.orange,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Designed and build by ", style: AppStyles.bodyMedium),
                Text("Vijay Balaji", style: AppStyles.headlineSmall),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column detailsIcons({required String name, required String assertName}) =>
      Column(
        children: [
          Image.asset(
            assertName,
            height: 35,
            width: 35,
          ),
          Text(name, style: AppStyles.titleMedium),
        ],
      );
}

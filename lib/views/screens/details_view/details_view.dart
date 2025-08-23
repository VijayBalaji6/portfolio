import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/styles/app_styles.dart';
import 'package:portfolio/themes/app_colors.dart';
import 'package:portfolio/views/common_widgets/page_titles.dart';
import 'package:portfolio/views/screens/details_view/widgets/details_widget.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      spacing: 30,
      children: [
        const PageTitles(
          title: WebsiteBuiltWith.websiteBuildWith,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 30,
          children: websiteBuildWith.map((techDetail) {
            return WebsiteBuildWithWidget(techDetail: techDetail);
          }).toList(),
        ),
        Container(
          decoration: const BoxDecoration(
              color: AppColors.orange,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
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
}

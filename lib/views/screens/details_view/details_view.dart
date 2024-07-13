import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      children: [
        const PageTitles(
          title: WebsiteBuiltWith.websiteBuildWith,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: .15.sh,
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constrains) {
            return ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: websiteBuildWith.length,
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              itemBuilder: (BuildContext context, int index) =>
                  WebsiteBuildWithWidget(
                techDetail: websiteBuildWith[index],
              ),
            );
          }),
        ),
        const SizedBox(
          height: 10,
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

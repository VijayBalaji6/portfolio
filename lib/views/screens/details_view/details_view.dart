import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/models/website_build_with.dart';
import 'package:portfolio/providers/network_provider/skill_provider.dart';
import 'package:portfolio/styles/app_styles.dart';
import 'package:portfolio/themes/app_colors.dart';
import 'package:portfolio/views/common_widgets/page_titles.dart';
import 'package:portfolio/views/screens/details_view/widgets/details_widget.dart';

class DetailsView extends ConsumerWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final skillProvider = ref.watch(websiteBuiltWithFutureProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const PageTitles(
          title: AppTitles.websiteBuildWith,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: .15.sh,
          child: skillProvider.when(
            loading: () => const CircularProgressIndicator(),
            error: (err, stack) => const Text("Error loading Skills"),
            data: (List<WebsiteBuildWith> websiteBuildWith) {
              return ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: websiteBuildWith.length,
                separatorBuilder: (context, index) => const SizedBox(width: 30),
                itemBuilder: (BuildContext context, int index) =>
                    WebsiteBuildWithWidget(
                  techName: websiteBuildWith[index].techName,
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: const BoxDecoration(
              color: AppColors.orange,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
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

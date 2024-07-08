import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/models/website_build_with.dart';
import 'package:portfolio/providers/network_provider/skill_provider.dart';
import 'package:portfolio/styles/app_styles.dart';
import 'package:portfolio/themes/app_colors.dart';
import 'package:portfolio/views/common_widgets/page_titles.dart';
import 'package:portfolio/views/screens/details_view/widgets/deatails_widget.dart';

class DetailsView extends ConsumerWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final skillProvider = ref.watch(websiteBuiltWithFutureProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const PageTitles(
          title: AppTitles.websiteBuildWith,
        ),
        skillProvider.when(
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => const Text("Error loading Skills"),
          data: (List<WebsiteBuildWith> websiteBuildWith) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                  mainAxisSpacing: 25.0,
                  crossAxisSpacing: 20.0,
                  childAspectRatio: 2.5,
                  mainAxisExtent: 125,
                ),
                itemCount: websiteBuildWith.length,
                itemBuilder: (BuildContext context, int index) =>
                    WebsiteBuildWithWidget(
                  techName: websiteBuildWith[index].techName,
                ),
              ),
              // SizedBox(
              //   height: 0.05.sh,
              // ),
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
                      Text("Designed and build by ",
                          style: AppStyles.bodyMedium),
                      Text("Vijay Balaji", style: AppStyles.headlineSmall),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

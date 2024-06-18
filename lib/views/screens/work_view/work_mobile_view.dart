import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/styles/app_styles.dart';
import 'package:portfolio/themes/app_colors.dart';
import 'package:portfolio/views/screens/work_view/widgets/work_view_widgets.dart';

class WorkMobileView extends StatelessWidget {
  const WorkMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkViewWidgets.exploreMyLatestWorks(),
        SizedBox(
          height: 0.03.sh,
        ),
        WorkViewWidgets.seeProjectsButton(),
        SizedBox(
          height: 0.03.sh,
        ),
        builtProjectShowCaseList(projectName: "Weather Buddy"),
      ],
    );
  }
}

Widget builtProjectShowCaseList({required String projectName}) => SizedBox(
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 0.2.sh,
                      width: 0.2.sh,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            projectName,
                            style: AppStyles.labelLarge,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
    );

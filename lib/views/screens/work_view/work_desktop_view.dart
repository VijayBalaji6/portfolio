import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/styles/app_styles.dart';
import 'package:portfolio/themes/app_colors.dart';
import 'package:portfolio/views/screens/work_view/widgets/work_view_widgets.dart';

class WorkDesktopView extends StatelessWidget {
  const WorkDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            WorkViewWidgets.exploreMyLatestWorks(),
            WorkViewWidgets.seeProjectsButton()
          ],
        ),
        SizedBox(
          height: 0.03.sh,
        ),
        builtProjectShowCaseList(projectName: "Todo-Book"),
      ],
    );
  }
}

Widget builtProjectShowCaseList({required String projectName}) => Flexible(
      child: SizedBox(
        height: 0.35.sw,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 0.3.sw,
                        width: 0.2.sw,
                      ),
                      SizedBox(
                        height: 0.01.sw,
                      ),
                      Text(
                        projectName,
                        style: AppStyles.labelLarge,
                      )
                    ],
                  ),
                )),
      ),
    );

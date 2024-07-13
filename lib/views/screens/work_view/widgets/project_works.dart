import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/styles/app_styles.dart';
import 'package:portfolio/themes/app_colors.dart';

class ProjectWorks extends StatelessWidget {
  const ProjectWorks({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600;

      return ListView.separated(
          shrinkWrap: true,
          itemCount: projects.length,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => SizedBox(
                height: 0.02.sw,
              ),
          itemBuilder: (BuildContext context, int index) {
            final Project currentProject = projects[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: isMobile ? 0.25.sh : 0.5.sh,
                  width: isMobile ? 1.sw : .5.sw,
                ),
                SizedBox(
                  height: 0.01.sw,
                ),
                Text(
                  currentProject.projectName,
                  style: AppStyles.labelLarge,
                ),
              ],
            );
          });
    });
  }
}

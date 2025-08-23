import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

      return GridView.builder(
          shrinkWrap: true,
          itemCount: projects.length,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
              childAspectRatio: isMobile ? 1.5 : 1.25,
              crossAxisCount: isMobile ? 1 : 2),
          itemBuilder: (BuildContext context, int index) {
            final Project currentProject = projects[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: 10,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
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

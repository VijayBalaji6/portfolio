import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/views/screens/work_view/widgets/project_works.dart';
import 'package:portfolio/views/screens/work_view/widgets/work_view_widgets.dart';

class WorkView extends StatelessWidget {
  const WorkView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            WorkViewWidgets.exploreMyLatestWorks(),
            if (!isMobile) WorkViewWidgets.seeProjectsButton()
          ],
        ),
        if (isMobile) ...[
          SizedBox(
            height: 0.03.sh,
          ),
          WorkViewWidgets.seeProjectsButton(),
        ],
        SizedBox(
          height: 0.03.sh,
        ),
        const ProjectWorks(),
      ],
    );
  }
}

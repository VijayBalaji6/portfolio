import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_styles.dart';

class WorkViewWidgets {
  static Text exploreMyLatestWorks() =>
      Text("Explore My Latest works", style: AppStyles.headlineMedium);

  static Widget seeProjectsButton() => ElevatedButton(
      onPressed: null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("See Projects", style: AppStyles.labelMedium),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.arrow_circle_right_sharp,
            size: 20,
          )
        ],
      ));
}

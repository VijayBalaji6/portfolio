import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants/asserts_constants.dart';
import 'package:portfolio/views/screens/skills_view/widgets/skills_widgets.dart';

List<String> skillAssertList = [
  SkillAssets.dartImage,
  SkillAssets.pythonImage,
  SkillAssets.javaScriptImage,
  SkillAssets.gitImage,
  SkillAssets.flutterImage,
  SkillAssets.angularImage,
  SkillAssets.firebaseImage,
  SkillAssets.supabaseImage,
  SkillAssets.postgresImage,
  SkillAssets.htmlImage,
  SkillAssets.cssImage,
  SkillAssets.figmaImage,
  SkillAssets.canvaImage,
];

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SkillsWidget.skillsTitle(),
        GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 5,
              mainAxisSpacing: 1.0,
              crossAxisSpacing: 1.0,
            ),
            itemCount: skillAssertList.length,
            itemBuilder: (BuildContext context, int index) =>
                SkillsWidget.techSkillWidget(skillName: skillAssertList[index]))
      ],
    );
  }
}

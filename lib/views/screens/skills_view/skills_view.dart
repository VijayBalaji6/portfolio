import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants/asserts_constants.dart';
import 'package:portfolio/views/screens/skills_view/widgets/skills_widgets.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SkillsWidget.skillsTitle(),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkillsWidget.techSkillWidget(
              skillAssetName: SkillAssets.dartImage,
              skillName: 'Dart',
            ),
            SkillsWidget.techSkillWidget(
              skillAssetName: SkillAssets.javaScriptImage,
              skillName: 'JavaScript',
            ),
            SkillsWidget.techSkillWidget(
              skillAssetName: SkillAssets.pythonImage,
              skillName: 'Python',
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkillsWidget.techSkillWidget(
              skillAssetName: SkillAssets.flutterImage,
              skillName: 'Flutter',
            ),
            SkillsWidget.techSkillWidget(
              skillAssetName: SkillAssets.gitImage,
              skillName: 'Git',
            ),
            SkillsWidget.techSkillWidget(
              skillAssetName: SkillAssets.angularImage,
              skillName: 'Angular',
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkillsWidget.techSkillWidget(
              skillAssetName: SkillAssets.firebaseImage,
              skillName: 'Firebase',
            ),
            SkillsWidget.techSkillWidget(
              skillAssetName: SkillAssets.supabaseImage,
              skillName: 'Supabase',
            ),
            SkillsWidget.techSkillWidget(
              skillAssetName: SkillAssets.postgresImage,
              skillName: 'Postgres',
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkillsWidget.techSkillWidget(
              skillAssetName: SkillAssets.htmlImage,
              skillName: 'HTML',
            ),
            SkillsWidget.techSkillWidget(
              skillAssetName: SkillAssets.cssImage,
              skillName: 'CSS',
            ),
            SkillsWidget.techSkillWidget(
              skillAssetName: SkillAssets.figmaImage,
              skillName: 'Figma',
            ),
            SkillsWidget.techSkillWidget(
              skillAssetName: SkillAssets.canvaImage,
              skillName: 'Canva',
            ),
          ],
        ),
      ],
    );
  }
}

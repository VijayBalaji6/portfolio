// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/models/skills.dart';
import 'package:portfolio/providers/network_provider/skill_provider.dart';
import 'package:portfolio/views/screens/skills_view/widgets/skills_widgets.dart';
import 'package:portfolio/views/screens/skills_view/widgets/tech_skill_widget.dart';

class SkillsView extends ConsumerWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final skillProvider = ref.watch(skillFutureProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SkillsWidget.skillsTitle(),
        skillProvider.when(
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => const Text("Error loading Skills"),
          data: (List<Skill> skills) => GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              mainAxisSpacing: 25.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 2.5,
              mainAxisExtent: 125,
            ),
            itemCount: skills.length,
            itemBuilder: (BuildContext context, int index) => TechSkillWidget(
              skillAssetName: skills[index].skillImg,
              skillName: skills[index].skillName,
            ),
          ),
        ),
      ],
    );
  }
}

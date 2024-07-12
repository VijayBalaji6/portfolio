import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/models/skills.dart';
import 'package:portfolio/providers/network_provider/skill_provider.dart';
import 'package:portfolio/views/common_widgets/page_titles.dart';
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
        const PageTitles(
          title: AppTitles.skills,
        ),
        const SizedBox(
          height: 10,
        ),
        skillProvider.when(
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => const Text("Error loading Skills"),
          data: (List<Skill> skills) {
            final screenWidth = MediaQuery.of(context).size.width;
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: screenWidth > 800
                    ? (screenWidth > 800 && screenWidth < 1200)
                        ? 4
                        : 7
                    : 3,
                mainAxisSpacing: 25.0,
                crossAxisSpacing: 20.0,
                childAspectRatio: 2.5,
                mainAxisExtent: 125,
              ),
              itemCount: skills.length,
              itemBuilder: (BuildContext context, int index) => TechSkillWidget(
                skillName: skills[index].skillName,
              ),
            );
          },
        ),
      ],
    );
  }
}

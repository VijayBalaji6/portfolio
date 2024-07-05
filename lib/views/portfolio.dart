import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constants/app_gloabls.dart';
import 'package:portfolio/models/skills.dart';
import 'package:portfolio/views/app_bar/portfolio_floating_app_bar.dart';
import 'package:portfolio/views/drawer/app_bar_drawer.dart';
import 'package:portfolio/views/screens/about_view/about.dart';
import 'package:portfolio/views/screens/contacts_view/contact_view.dart';
import 'package:portfolio/views/screens/details_view/details_view.dart';
import 'package:portfolio/views/screens/home_view/home_view.dart';
import 'package:portfolio/views/screens/skills_view/skills_view.dart';
import 'package:portfolio/views/screens/work_view/work_view.dart';

List<Skill> skills = [
  Skill(skillName: 'dart', position: 0),
  Skill(skillName: 'flutter', position: 1),
  Skill(skillName: 'firebase', position: 2),
  Skill(skillName: 'supabase', position: 3),
  Skill(skillName: 'postgres', position: 4),
  Skill(skillName: 'python', position: 5),
  Skill(skillName: 'git', position: 6),
  Skill(skillName: 'html', position: 7),
  Skill(skillName: 'css', position: 8),
  Skill(skillName: 'type script', position: 9),
  Skill(skillName: 'angular', position: 10),
  Skill(skillName: 'figma', position: 11),
  Skill(skillName: 'canva', position: 12),
  Skill(skillName: 'postman', position: 13),
];

class PortFolio extends StatelessWidget {
  const PortFolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: const AppBarDrawer(),
      appBar: const PortFolioFloatingAppBar(),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 0.05.sw, vertical: 0.03.sh),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            HomeView(
              key: homeViewKey,
            ),
            AboutView(
              key: aboutViewKey,
            ),
            const SkillsView(),
            WorkView(
              key: workViewKey,
            ),
            ContactView(
              key: contactViewKey,
            ),
            const DetailsView()
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_globals.dart';
import 'package:portfolio/views/app_bar/portfolio_floating_app_bar.dart';
import 'package:portfolio/views/drawer/app_bar_drawer.dart';
import 'package:portfolio/views/screens/about_view/about_view.dart';
import 'package:portfolio/views/screens/contacts_view/contact_view.dart';
import 'package:portfolio/views/screens/details_view/details_view.dart';
import 'package:portfolio/views/screens/home_view/home_view.dart';
import 'package:portfolio/views/screens/skills_view/skills_view.dart';
import 'package:portfolio/views/screens/work_view/work_view.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: Column(mainAxisSize: MainAxisSize.min, spacing: 30, children: [
          HomeView(
            key: homeViewKey,
          ),
          AboutView(
            key: aboutViewKey,
          ),
          SkillsView(
            key: skillsViewKey,
          ),
          WorkView(
            key: workViewKey,
          ),
          ContactView(
            key: contactViewKey,
          ),
          const DetailsView()
        ]),
      ),
    );
  }
}

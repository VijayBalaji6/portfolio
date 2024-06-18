import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constants/app_gloabls.dart';
import 'package:portfolio/views/app_bar/portfolio_floating_app_bar.dart';
import 'package:portfolio/views/drawer/app_bar_drawer.dart';
import 'package:portfolio/views/screens/about_view/about.dart';
import 'package:portfolio/views/screens/contacts_view/contact_view.dart';
import 'package:portfolio/views/screens/details_view/details_view.dart';
import 'package:portfolio/views/screens/home_view/home_view.dart';
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

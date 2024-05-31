import 'package:flutter/material.dart';
import 'package:portfolio/views/main_widgets/portfolio_floating_app_bar.dart';
import 'package:portfolio/views/screens/about.dart';
import 'package:portfolio/views/screens/contacts.dart';
import 'package:portfolio/views/screens/home.dart';
import 'package:portfolio/views/screens/work.dart';

class PortFolio extends StatelessWidget {
  const PortFolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                HomeView(),
                AboutView(),
                WorkView(),
                ContactView(),
              ],
            ),
          ),
          PortFolioFloatingAppBar(),
        ],
      ),
    );
  }
}

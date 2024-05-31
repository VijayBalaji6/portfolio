import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/views/main_widgets/portfolio_floating_app_bar.dart';
import 'package:portfolio/views/screens/about.dart';
import 'package:portfolio/views/screens/contacts_view/contacts.dart';
import 'package:portfolio/views/screens/home_view/home.dart';
import 'package:portfolio/views/screens/work.dart';

class PortFolio extends StatelessWidget {
  const PortFolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PortFolioFloatingAppBar(),
      body: SizedBox(
        height: .9.sh,
        width: 1.sw,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.05.sw, vertical: 0.03.sh),
          child: const SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                HomeView(),
                AboutView(),
                WorkView(),
                ContactView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

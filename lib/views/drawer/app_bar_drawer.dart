import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constants/app_gloabls.dart';
import 'package:portfolio/providers/nav_notifier.dart';
import 'package:portfolio/styles/app_styles.dart';
import 'package:portfolio/views/app_bar/app_bar_desktop_view.dart';

class AppBarDrawer extends StatelessWidget {
  const AppBarDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final currentSelectedPage = ref.watch(counterProvider);
          return ListView.builder(
            shrinkWrap: true,
            itemCount: views.length,
            itemBuilder: (context, index) {
              final String currentTitle = views[index];
              return ListTile(
                leading: Icon(
                  drawerIcons[index],
                  size: 20.sp,
                ),
                title: Text(currentTitle,
                    style: currentSelectedPage == currentTitle
                        ? AppStyles.appTitleSelectedStyle
                        : AppStyles.appTitleStyle),
                onTap: () {
                  scrollSection(sectionKey: getCurrentViewKey(currentTitle));
                  ref
                      .read(counterProvider.notifier)
                      .onChangeTabView(selectedTabView: currentTitle);
                  Navigator.pop(context);
                },
              );
            },
          );
        },
      ),
    );
  }
}

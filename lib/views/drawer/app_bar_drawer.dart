import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/constants/app_gloabls.dart';
import 'package:portfolio/providers/nav_notifier.dart';
import 'package:portfolio/styles/app_styles.dart';
import 'package:portfolio/themes/app_colors.dart';
import 'package:portfolio/views/app_bar/app_bar_desktop_view.dart';

class AppBarDrawer extends StatelessWidget {
  const AppBarDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final currentSelectedPage = ref.watch(scrollNavProvider);
          return ListView.builder(
            shrinkWrap: true,
            itemCount: views.length,
            itemBuilder: (context, index) {
              final String currentTitle = views[index];
              return ListTile(
                leading: Icon(drawerIcons[index],
                    size: 25,
                    color: currentSelectedPage == currentTitle
                        ? AppColors.orange
                        : null),
                title: Text(currentTitle,
                    style: AppStyles.titleMedium.copyWith(
                        color: currentSelectedPage == currentTitle
                            ? AppColors.orange
                            : null)),
                onTap: () {
                  scrollSection(sectionKey: getCurrentViewKey(currentTitle));
                  ref
                      .read(scrollNavProvider.notifier)
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

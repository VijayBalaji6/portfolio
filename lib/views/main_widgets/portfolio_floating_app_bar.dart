import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/providers/nav_notifier.dart';
import 'package:portfolio/providers/theme_notifier.dart';
import 'package:portfolio/styles/app_styles.dart';

List<String> views = [
  AppTitles.home,
  AppTitles.about,
  AppTitles.work,
  AppTitles.contact
];

class PortFolioFloatingAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PortFolioFloatingAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(200);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sw, vertical: 0.03.sh),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          builtName(),
          builtAppTitle(),
          builtThemeSwitcher(),
        ],
      ),
    );
  }

  Widget builtName() => Text(
        AppTitles.userName,
        style: AppStyles.userNameTextStyle,
      );

  SizedBox titleSpaceSizer() => SizedBox(
        width: .02.sw,
      );

  Widget builtAppTitle() => Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final currentSelectedPage = ref.watch(counterProvider);
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: views
                .map((String title) => Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => ref
                              .read(counterProvider.notifier)
                              .onChangeTabView(selectedTabView: title),
                          child: Text(title,
                              style: currentSelectedPage == title
                                  ? AppStyles.appTitleSelectedStyle
                                  : AppStyles.appTitleStyle),
                        ),
                        titleSpaceSizer()
                      ],
                    ))
                .toList(),
          );
        },
      );

  Widget builtThemeSwitcher() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppTitles.light,
            style: AppStyles.themeSwitcherTitleStyle,
          ),
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final currentTheme = ref.watch(themeProvider);
              return Switch.adaptive(
                value: currentTheme,
                onChanged: (bool value) =>
                    ref.read(themeProvider.notifier).state = value,
              );
            },
          ),
          Text(
            AppTitles.dark,
            style: AppStyles.appTitleStyle,
          )
        ],
      );
}

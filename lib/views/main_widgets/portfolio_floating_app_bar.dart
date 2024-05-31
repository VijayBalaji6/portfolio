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

class PortFolioFloatingAppBar extends StatelessWidget {
  const PortFolioFloatingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.15.sh, vertical: 0.03.sw),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.all(Radius.circular(200.sp))),
        padding: EdgeInsets.symmetric(horizontal: 0.05.sh, vertical: 0.01.sw),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            builtName(),
            builtAppTitle(),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                builtThemeSwitcher(),
                SizedBox(
                  width: .05.sw,
                ),
                builtResumeButton()
              ],
            ),
          ],
        ),
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

  Widget builtResumeButton() => Container(
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.all(Radius.circular(200.sp))),
        padding: EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.01.sh),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppTitles.resume,
              style: AppStyles.resumeButtonStyle,
            ),
            SizedBox(
              width: .01.sw,
            ),
            Icon(
              Icons.download_outlined,
              size: 7.sp,
            )
          ],
        ),
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

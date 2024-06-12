import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/constants/app_gloabls.dart';
import 'package:portfolio/providers/theme_notifier.dart';

class AppBarMobileView extends StatelessWidget {
  const AppBarMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => drawerKey.currentState?.openDrawer(),
          icon: const Icon(
            Icons.menu,
          ),
        ),
        buildMobileThemeSwitcher()
      ],
    );
  }

  Widget buildMobileThemeSwitcher() => Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final currentTheme = ref.watch(themeProvider);
          return IconButton(
            icon: Icon(
              currentTheme ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: () =>
                ref.read(themeProvider.notifier).state = !currentTheme,
          );
        },
      );
}

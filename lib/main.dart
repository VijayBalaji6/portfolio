import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/providers/theme_notifier.dart';
import 'package:portfolio/themes/app_theme.dart';
import 'package:portfolio/views/portfolio.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      minTextAdapt: false,
      splitScreenMode: false,
      builder: (_, child) => MaterialApp(
        title: AppConstants.appName,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.getAppTheme(context, ref.watch(themeProvider)),
        home: const PortFolio(),
      ),
    );
  }
}

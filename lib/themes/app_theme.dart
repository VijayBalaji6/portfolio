import 'package:flutter/material.dart';
import 'package:portfolio/themes/app_colors.dart';

class AppTheme {
  static ThemeData getAppTheme(BuildContext context, bool isDarkTheme) =>
      ThemeData(
        drawerTheme: DrawerThemeData(
          elevation: 10,
          surfaceTintColor: isDarkTheme ? AppColors.white : AppColors.black,
          shadowColor: isDarkTheme ? AppColors.white : AppColors.black,
          backgroundColor: isDarkTheme ? AppColors.black : AppColors.white,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor:
            isDarkTheme ? AppColors.black : AppColors.white,
        dividerTheme: Theme.of(context).dividerTheme.copyWith(
              color: isDarkTheme ? AppColors.white : AppColors.black,
            ),
        iconTheme: Theme.of(context).iconTheme.copyWith(
              color: isDarkTheme ? AppColors.white : AppColors.black,
            ),
        textTheme: TextTheme(
          labelSmall: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
          labelMedium: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
          labelLarge: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
          titleSmall: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
          titleMedium: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
          titleLarge: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
          displaySmall: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
          displayMedium: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
          displayLarge: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
          headlineSmall: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
          headlineMedium: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
          headlineLarge: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
          bodySmall: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
          bodyMedium: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
          bodyLarge: TextStyle(
            color: isDarkTheme ? AppColors.white : AppColors.black,
          ),
        ).apply(
          displayColor: isDarkTheme ? AppColors.white : AppColors.black,
        ),
        switchTheme: SwitchThemeData(
          thumbColor: WidgetStateProperty.all(AppColors.orange),
        ),
        listTileTheme: ListTileThemeData(
          iconColor: isDarkTheme ? AppColors.white : AppColors.black,
          textColor: isDarkTheme ? AppColors.white : AppColors.black,
        ),
        appBarTheme: AppBarTheme(
            backgroundColor: isDarkTheme ? AppColors.black : AppColors.white,
            iconTheme: IconThemeData(
                color: isDarkTheme ? AppColors.white : AppColors.black)),
      );
}

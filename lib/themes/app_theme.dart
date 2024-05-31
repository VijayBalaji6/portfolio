import 'package:flutter/material.dart';
import 'package:portfolio/themes/app_colors.dart';

class AppTheme {
  static ThemeData getAppTheme(BuildContext context, bool isDarkTheme) =>
      ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor:
            isDarkTheme ? AppColors.black : AppColors.white,
        dividerTheme: Theme.of(context).dividerTheme.copyWith(
              color: isDarkTheme ? AppColors.white : AppColors.black,
            ),
        iconTheme: Theme.of(context).iconTheme.copyWith(
              color: isDarkTheme ? AppColors.white : AppColors.black,
            ),
        textTheme: Theme.of(context)
            .textTheme
            .copyWith(
              titleSmall: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontSize: 11),
            )
            .apply(
              bodyColor: isDarkTheme ? AppColors.white : AppColors.black,
              displayColor: AppColors.grey,
            ),
        switchTheme: SwitchThemeData(
          thumbColor: WidgetStateProperty.all(
              isDarkTheme ? AppColors.orange : AppColors.purple),
        ),
        listTileTheme: ListTileThemeData(
            iconColor: isDarkTheme ? AppColors.orange : AppColors.purple),
        appBarTheme: AppBarTheme(
            backgroundColor: isDarkTheme ? AppColors.black : AppColors.white,
            iconTheme: IconThemeData(
                color: isDarkTheme ? Colors.white : Colors.black54)),
      );
}

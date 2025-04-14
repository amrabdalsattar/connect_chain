import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'colors_helper.dart';

class ThemesHelper {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'cairo',
    textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorsHelper.primaryColor,
        selectionHandleColor: ColorsHelper.primaryColor,
        selectionColor: ColorsHelper.primaryColor.withValues(alpha: 0.2)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedItemColor: ColorsHelper.secondaryGray,
      selectedItemColor: ColorsHelper.primaryColor,
      selectedLabelStyle: AppTextStyles.cairoPrimaryBold12,
      backgroundColor: Colors.white,
      selectedIconTheme: const IconThemeData(color: ColorsHelper.primaryColor),
    ),
    appBarTheme: const AppBarTheme(
      color: ColorsHelper.white,
    ),
    scaffoldBackgroundColor: ColorsHelper.white,
    primaryColor: ColorsHelper.primaryColor,
    canvasColor: Colors.white,
    splashColor: ColorsHelper.transparent,
  );
}

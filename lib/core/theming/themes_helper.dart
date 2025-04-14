import 'package:flutter/material.dart';

import 'colors_helper.dart';

class ThemesHelper {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'cairo',
    textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorsHelper.primaryColor,
        selectionHandleColor: ColorsHelper.primaryColor,
        selectionColor: ColorsHelper.primaryColor.withValues(alpha: 0.2)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedItemColor: ColorsHelper.secondaryGray,
      selectedItemColor: ColorsHelper.primaryColor,
      backgroundColor: Colors.white,
      selectedIconTheme: IconThemeData(color: ColorsHelper.primaryColor),
    ),
    scaffoldBackgroundColor: ColorsHelper.white,
    primaryColor: ColorsHelper.primaryColor,
    canvasColor: Colors.white,
    splashColor: ColorsHelper.transparent,
  );
}

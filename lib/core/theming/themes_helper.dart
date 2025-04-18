import 'package:flutter/material.dart';

import 'colors_helper.dart';

class ThemesHelper {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'cairo',
    textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorsHelper.primaryColor,
        selectionHandleColor: ColorsHelper.primaryColor,
        selectionColor: ColorsHelper.primaryColor.withValues(alpha: 0.2)),
    scaffoldBackgroundColor: ColorsHelper.white,
    primaryColor: ColorsHelper.primaryColor,
  );
}

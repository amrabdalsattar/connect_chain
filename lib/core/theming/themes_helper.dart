import 'colors_helper.dart';
import 'package:flutter/material.dart';

class ThemesHelper {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'cairo',
    textSelectionTheme: const TextSelectionThemeData(),
    scaffoldBackgroundColor: ColorsHelper.white,
    primaryColor: ColorsHelper.primaryColor,
  );
}

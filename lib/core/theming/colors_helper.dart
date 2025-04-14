import 'package:flutter/material.dart';

class ColorsHelper {
  static const Color white = Colors.white;
  static const Color transparent = Colors.transparent;
  static const Color black = Colors.black;
  static const Color red = Colors.red;
  static const Color green = Colors.green;

  static const Color primaryColor = Color(0xFFF28D23);

  static Color fadedBlack = Colors.black.withValues(alpha: 0.65);
  static Color semiOpacityBlack = Colors.black.withValues(alpha: 0.5);

  static Color fadedGray = Colors.black.withValues(alpha: 0.1);
  static const Color darkGray = Color(0xFF141414);
  static const Color gray = Color(0xFF333333);
  static const Color secondaryGray = Color(0xFF888888);
  static Color semiGray = Colors.black.withValues(alpha: 0.5);
  static const Color liteGray = Color(0xFFEEEEEE);
  static const Color borderGray = Color(0xFFD1D1D1);
  static Color dividerGray = const Color(0xFF999999).withValues(alpha: 0.60);

  static const Color offWhite = Color.fromARGB(171, 242, 242, 242);

  static const Color darkBlue = Color(0xFF292D32);

  static const Color subText = Color(0xff6B7280);

  static const Color shimmerMidGrey = Color.fromARGB(18, 95, 95, 96);
  static const Color shimmerLiteGrey = Color.fromARGB(34, 95, 95, 96);

  // Profile Header Gradient Colors.
  static const Color profileHeaderGradientEnd = Color(0xff8C5014);
}

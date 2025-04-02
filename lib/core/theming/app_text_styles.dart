import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle fontPrimaryBold20 = TextStyle(
    fontSize: 20.sp,
    color: ColorsHelper.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle fontFadedBlackRegular16 = TextStyle(
    fontSize: 15.sp,
    color: ColorsHelper.fadedBlack,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle fontWhiteBold16 = TextStyle(
    fontSize: 16.sp,
    color: ColorsHelper.white,
    fontWeight: FontWeightHelper.bold,
  );
}

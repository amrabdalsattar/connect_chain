import 'colors_helper.dart';
import 'font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  // Cairo font
  static TextStyle cairoPrimaryBold20 = TextStyle(
    fontSize: 20.sp,
    color: ColorsHelper.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle cairoFadedBlackRegular16 = TextStyle(
    fontSize: 15.sp,
    color: ColorsHelper.fadedBlack,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle cairoWhiteBold16 = TextStyle(
    fontSize: 16.sp,
    color: ColorsHelper.white,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle cairoDarkGrayBold22 = TextStyle(
    fontSize: 22.sp,
    color: ColorsHelper.darkGray,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle cairoSemiOpacityBlackRegular14 = TextStyle(
    fontSize: 14.sp,
    color: ColorsHelper.semiOpacityBlack,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle cairoSemiOpacityBlackRegular16 = TextStyle(
    fontSize: 16.sp,
    color: ColorsHelper.semiOpacityBlack,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle cairoDarkGrayBold16 = TextStyle(
    fontSize: 16.sp,
    color: ColorsHelper.darkGray,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle cairoPrimaryBold16 = TextStyle(
    fontSize: 16.sp,
    color: ColorsHelper.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );

  // Tajawal font
  static TextStyle tajawalGrayRegular15 = TextStyle(
    fontFamily: 'tajawal',
    fontSize: 15.sp,
    color: ColorsHelper.gray,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle tajawalDarkGrayMedium14 = TextStyle(
    fontSize: 14.sp,
    color: ColorsHelper.darkGray,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle tajawalPrimaryMedium15 = TextStyle(
    fontSize: 15.sp,
    color: ColorsHelper.primaryColor,
    fontWeight: FontWeightHelper.medium,
  );
}

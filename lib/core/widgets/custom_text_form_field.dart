import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final String prefixIconPath;
  final bool? isObscure;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final Function(String?) validator;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.isObscure,
    this.keyboardType = TextInputType.text,
    required this.controller,
    required this.validator,
    required this.prefixIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: (value) => validator(value),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 16.h, bottom: 16.h),
        prefixIcon: SvgPicture.asset(
          prefixIconPath,
          fit: BoxFit.scaleDown,
        ),
        focusColor: ColorsHelper.primaryColor,
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: AppTextStyles.tajawalGrayRegular15.copyWith(height: 2),
        fillColor: ColorsHelper.offWhite,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsHelper.primaryColor,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsHelper.semiGray,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsHelper.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsHelper.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      obscureText: isObscure ?? false,
      style: AppTextStyles.tajawalDarkGrayMedium14,
      cursorColor: ColorsHelper.primaryColor,
    );
  }
}

import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final double width;
  final double elevation;
  const CustomButton(
      {super.key,
      required this.title,
      this.onTap,
      required this.width,
      this.elevation = 0});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: width,
        decoration: BoxDecoration(
          color: ColorsHelper.primaryColor,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: elevation,
              spreadRadius: 1,
              offset: Offset(0, elevation / 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.fontWhiteBold16,
          ),
        ),
      ),
    );
  }
}

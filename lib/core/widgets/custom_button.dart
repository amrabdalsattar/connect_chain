import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_text_styles.dart';
import '../theming/colors_helper.dart';
import 'loading_indicator.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final double width;
  final double elevation;
  final bool isLoading;
  const CustomButton({
    super.key,
    required this.title,
    this.onTap,
    required this.width,
    this.elevation = 0,
    this.isLoading = false,
  });

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
              color: Colors.black.withOpacity(elevation == 0 ? 0 : 0.25),
              blurRadius: elevation,
              spreadRadius: 1,
              offset: Offset(0, elevation / 2),
            ),
          ],
        ),
        child: isLoading
            ? SizedBox(
                height: 30.h,
                width: 30.w,
                child: const LoadingIndicator(
                  color: ColorsHelper.white,
                ),
              )
            : Center(
                child: Text(
                  title,
                  style: AppTextStyles.cairoWhiteBold16,
                ),
              ),
      ),
    );
  }
}

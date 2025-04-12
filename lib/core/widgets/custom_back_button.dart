import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/extensions.dart';
import '../theming/colors_helper.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.w),
      child: InkWell(
        onTap: () => context.pop(),
        borderRadius: BorderRadius.circular(4),
        child: Container(
          width: 32.w,
          height: 32.h,
          padding: EdgeInsets.all(2.w),
          decoration: BoxDecoration(
            color: ColorsHelper.black,
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Icon(
            Icons.arrow_back,
            size: 24,
            color: ColorsHelper.white,
          ),
        ),
      ),
    );
  }
}

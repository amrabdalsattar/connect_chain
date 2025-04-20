import '../../../../core/helpers/app_images.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomAddProductButton extends StatelessWidget {
  const CustomAddProductButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 153.w,
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          backgroundColor: ColorsHelper.primaryColor,
          padding: EdgeInsets.symmetric(
            vertical: 12.h,
            horizontal: 16.w,
          ),
          shadowColor: ColorsHelper.boxShadow,
          elevation: 4,
        ),
        onPressed: () {
          context.pushNamed(Routes.addProductScreenRoute);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppImages.addIcon,
              width: 16.w,
              height: 16.h,
            ),
            horizontalSpace(8),
            Text('اضافه منتج', style: AppTextStyles.cairoWhiteBold14),
          ],
        ),
      ),
    );
  }
}

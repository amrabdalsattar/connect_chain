import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaRegistrationWidgets extends StatelessWidget {
  const SocialMediaRegistrationWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
              height: 1,
              color: ColorsHelper.semiGray,
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'او',
                style: AppTextStyles.cairoSemiOpacityBlackRegular16,
              ),
            ),
            Expanded(
                child: Container(
              height: 1,
              color: ColorsHelper.semiGray,
            )),
          ],
        ),
        verticalSpace(24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 90.w,
              height: 48.h,
              padding: EdgeInsets.all(10.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorsHelper.liteGray,
              ),
              child: SvgPicture.asset(AppImages.appleLogo),
            ),
            Container(
              width: 90.w,
              height: 48.h,
              padding: EdgeInsets.all(10.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorsHelper.liteGray,
              ),
              child: SvgPicture.asset(AppImages.facebookLogo),
            ),
            Container(
              width: 90.w,
              height: 48.h,
              padding: EdgeInsets.all(10.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorsHelper.liteGray,
              ),
              child: SvgPicture.asset(AppImages.googleLogo),
            ),
          ],
        ),
      ],
    );
  }
}

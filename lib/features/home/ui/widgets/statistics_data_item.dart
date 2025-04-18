import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticsDataItem extends StatelessWidget {
  const StatisticsDataItem(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.iconBackGroundColor,
      required this.value,
      this.isMonetaryValue = false});

  final Color iconBackGroundColor;
  final String imagePath;
  final bool isMonetaryValue;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          color: ColorsHelper.homeScaffoldColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(4.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                color: iconBackGroundColor.withValues(alpha: 0.09),
              ),
              child: SvgPicture.asset(imagePath),
            ),
            verticalSpace(4),
            isMonetaryValue
                ? RichText(
                    textDirection: TextDirection.ltr,
                    text: TextSpan(
                      style: AppTextStyles.cairoBlackBold14,
                      children: [
                        TextSpan(
                            text: '${value.toString()} ',
                            style: AppTextStyles.cairoBlackBold14),
                        TextSpan(
                          text: 'EGP',
                          style: AppTextStyles.cairoSemiGreyRegular12
                              .copyWith(fontSize: 10.sp),
                        ),
                      ],
                    ),
                  )
                : Text(
                    value,
                    style: AppTextStyles.cairoBlackBold14
                        .copyWith(fontSize: 12.sp),
                  ),
            verticalSpace(4),
            Text(
              title,
              style: AppTextStyles.cairoGrayMedium11,
            ),
          ],
        ),
      ),
    );
  }
}

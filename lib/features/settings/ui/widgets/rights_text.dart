import '../../../../core/theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_text_styles.dart';

class RightsText extends StatelessWidget {
  const RightsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.copyright,
            size: 10,
            color: ColorsHelper.semiGray,
          ),
          Text(
            ' 2025 ConnectChain جميع الحقوق محفوظة',
            style: AppTextStyles.cairoGrayMedium11
                .copyWith(color: ColorsHelper.semiGray),
          ),
        ],
      ),
    );
  }
}

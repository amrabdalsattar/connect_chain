import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MostSellingSection extends StatelessWidget {
  const MostSellingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
      decoration: BoxDecoration(
        color: ColorsHelper.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'الاكثر مبيعا',
            style: AppTextStyles.cairoBlackBold16,
          )
        ],
      ),
    );
  }
}

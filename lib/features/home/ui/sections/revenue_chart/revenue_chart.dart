import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/app_text_styles.dart';
import '../../../../../../core/theming/colors_helper.dart';
import 'widgets/revenue_chart_bloc_builder.dart';

class RevenueChart extends StatelessWidget {
  const RevenueChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: ColorsHelper.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 8.r,
                color: ColorsHelper.fadedPurple,
                offset: const Offset(0, 4)),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('مخطط الإيرادات', style: AppTextStyles.cairoBlackBold13),
          const VerticalSpace(height: 40),
          const RevenueChartBlocBuilder(),
        ],
      ),
    );
  }
}

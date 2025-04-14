import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/custom_line_chart.dart';
import 'widgets/monthly_statistics_data.dart';

class MonthlyStatisticsSection extends StatelessWidget {
  const MonthlyStatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: ColorsHelper.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'إحصائيات الشهر',
              style: AppTextStyles.cairoBlackBold18,
            ),
            verticalSpace(24),
            const MonthlyStatisticsData(),
            verticalSpace(24),
            const CustomLineChart(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';
import 'widgets/monthly_statistics_bloc_builder.dart';

class MonthlyStatisticsSection extends StatelessWidget {
  const MonthlyStatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'إحصائيات الشهر',
          style: AppTextStyles.cairoBlackBold18,
        ),
        const VerticalSpace(height: 24),
        const MonthlyStatisticsBlocBuilder(),
      ],
    );
  }
}

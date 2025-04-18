import '../../../../../../core/helpers/app_images.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/colors_helper.dart';
import '../../../../data/models/response_models/monthly_stats_response_model.dart';
import '../../../widgets/statistics_data_item.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/format_utils.dart';

class MonthlyStatisticsData extends StatelessWidget {
  final MonthlyStatsDataModel monthlyStatsDataModel;
  const MonthlyStatisticsData({
    super.key,
    required this.monthlyStatsDataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StatisticsDataItem(
          title: 'إجمالي الايرادات',
          imagePath: AppImages.dollarIcon,
          iconBackGroundColor: ColorsHelper.dollarIconBackGroundColor,
          value: priceFormat(monthlyStatsDataModel.totalRevenues),
          isMonetaryValue: true,
        ),
        horizontalSpace(4),
        StatisticsDataItem(
          title: 'متوسط الطلبات',
          imagePath: AppImages.bagIcon,
          iconBackGroundColor: ColorsHelper.bagIconBackGroundColor,
          value: monthlyStatsDataModel.averageOrderTotal.toInt().toString(),
        ),
        horizontalSpace(4),
        StatisticsDataItem(
          title: 'الأعلى مبيعًا',
          imagePath: AppImages.statisticsIcon,
          iconBackGroundColor: ColorsHelper.statisticsIconBackGroundColor,
          value: monthlyStatsDataModel.topSoldProductName,
        ),
      ],
    );
  }
}

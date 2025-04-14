import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/features/home/ui/widgets/statistics_data_item.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/format_utils.dart';

class MonthlyStatisticsData extends StatelessWidget {
  const MonthlyStatisticsData({
    super.key,
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
          value: priceFormat(100000),
          isMonetaryValue: true,
        ),
        horizontalSpace(4),
        const StatisticsDataItem(
          title: 'متوسط الطلبات',
          imagePath: AppImages.bagIcon,
          iconBackGroundColor: ColorsHelper.bagIconBackGroundColor,
          value: '500',
          isMonetaryValue: true,
        ),
        horizontalSpace(4),
        const StatisticsDataItem(
          title: 'الأعلى مبيعًا',
          imagePath: AppImages.statisticsIcon,
          iconBackGroundColor: ColorsHelper.statisticsIconBackGroundColor,
          value: 'Camera',
        ),
      ],
    );
  }
}

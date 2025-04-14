import 'package:flutter/material.dart';

import '../../../../../../core/helpers/app_images.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/colors_helper.dart';
import '../../statistics_data_item.dart';

class ProductsSummaryData extends StatelessWidget {
  const ProductsSummaryData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const StatisticsDataItem(
          title: 'إجمالي المنتجات',
          imagePath: AppImages.documentIcon,
          iconBackGroundColor: ColorsHelper.grossProductsBackGroundColor,
          value: '1000',
        ),
        horizontalSpace(4),
        const StatisticsDataItem(
          title: 'مخزون منخفض',
          imagePath: AppImages.downChartIcon,
          iconBackGroundColor: ColorsHelper.lowStockBackGroundColor,
          value: '500',
        ),
        horizontalSpace(4),
        const StatisticsDataItem(
          title: 'نفد من المخزون',
          imagePath: AppImages.outOfStockChartIcon,
          iconBackGroundColor: ColorsHelper.outOfStockBackGroundColor,
          value: '50',
        ),
      ],
    );
  }
}

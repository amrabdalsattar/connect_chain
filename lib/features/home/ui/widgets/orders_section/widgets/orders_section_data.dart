import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/features/home/ui/widgets/statistics_data_item.dart';
import 'package:flutter/material.dart';

class OrdersSectionData extends StatelessWidget {
  const OrdersSectionData({super.key});

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

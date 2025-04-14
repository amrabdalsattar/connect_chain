import '../../../../../../core/helpers/app_images.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/colors_helper.dart';
import '../../statistics_data_item.dart';
import 'package:flutter/material.dart';

class OrdersSectionData extends StatelessWidget {
  const OrdersSectionData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const StatisticsDataItem(
          title: 'طلب مكتمل',
          imagePath: AppImages.completedOrderIcon,
          iconBackGroundColor: ColorsHelper.completedOrderBackGroundColor,
          value: '500',
        ),
        horizontalSpace(4),
        const StatisticsDataItem(
          title: 'طلب معلق',
          imagePath: AppImages.pinnedOrderIcon,
          iconBackGroundColor: ColorsHelper.pinnedOrderBackGroundColor,
          value: '10',
        ),
        horizontalSpace(4),
        const StatisticsDataItem(
          title: 'طلب مرفوض',
          imagePath: AppImages.rejectedOrderIcon,
          iconBackGroundColor: ColorsHelper.rejectedOrderBackGroundColor,
          value: '20',
        ),
      ],
    );
  }
}

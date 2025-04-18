import 'package:connect_chain/features/home/data/models/response_models/orders_summary_response_model.dart';

import '../../../../../../core/helpers/app_images.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/colors_helper.dart';
import '../../../widgets/statistics_data_item.dart';
import 'package:flutter/material.dart';

class OrdersSectionData extends StatelessWidget {
  final OrdersSummaryDataModel ordersSummaryDataModel;
  const OrdersSectionData({super.key, required this.ordersSummaryDataModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StatisticsDataItem(
          title: 'طلب مكتمل',
          imagePath: AppImages.completedOrderIcon,
          iconBackGroundColor: ColorsHelper.completedOrderBackGroundColor,
          value: '${ordersSummaryDataModel.completedOrders}',
        ),
        horizontalSpace(4),
        StatisticsDataItem(
          title: 'طلب معلق',
          imagePath: AppImages.pinnedOrderIcon,
          iconBackGroundColor: ColorsHelper.pinnedOrderBackGroundColor,
          value: '${ordersSummaryDataModel.pendingOrders}',
        ),
        horizontalSpace(4),
        StatisticsDataItem(
          title: 'طلب مرفوض',
          imagePath: AppImages.rejectedOrderIcon,
          iconBackGroundColor: ColorsHelper.rejectedOrderBackGroundColor,
          value: '${ordersSummaryDataModel.rejectedOrders}',
        ),
      ],
    );
  }
}

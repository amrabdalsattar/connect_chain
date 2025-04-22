import 'package:connect_chain/features/main/logic/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/helpers/app_images.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/colors_helper.dart';
import '../../../../data/models/response_models/products_summary_response_model.dart';
import '../../../widgets/statistics_data_item.dart';

class ProductsSummaryData extends StatelessWidget {
  final ProductsSummaryDataModel productsSummaryDataModel;
  const ProductsSummaryData(
      {super.key, required this.productsSummaryDataModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<MainCubit>().toggleCurrentTabIndex = 2,
      child: Row(
        children: [
          StatisticsDataItem(
            title: 'إجمالي المنتجات',
            imagePath: AppImages.documentIcon,
            iconBackGroundColor: ColorsHelper.grossProductsBackGroundColor,
            value: '${productsSummaryDataModel.totalProducts}',
          ),
          horizontalSpace(4),
          StatisticsDataItem(
            title: 'مخزون منخفض',
            imagePath: AppImages.downChartIcon,
            iconBackGroundColor: ColorsHelper.lowStockBackGroundColor,
            value: '${productsSummaryDataModel.lowStockProducts}',
          ),
          horizontalSpace(4),
          StatisticsDataItem(
            title: 'نفد من المخزون',
            imagePath: AppImages.outOfStockChartIcon,
            iconBackGroundColor: ColorsHelper.outOfStockBackGroundColor,
            value: '${productsSummaryDataModel.outOfStockProducts}',
          ),
        ],
      ),
    );
  }
}

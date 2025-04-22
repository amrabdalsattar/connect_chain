import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/shimmer_loading_list.dart';
import '../../../../logic/products_summary_cubit/products_summary_cubit.dart';
import '../../../../logic/products_summary_cubit/products_summary_states.dart';
import 'products_summary_data.dart';

class ProductsSummaryBlocBuilder extends StatelessWidget {
  const ProductsSummaryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsSummaryCubit, ProductsSummaryState>(
        builder: (_, state) {
      switch (state) {
        case ProductsSummaryLoadingState():
          return const ShimmerLoadingList(
            itemCount: 3,
            containerHeight: 88,
            scrollDirection: Axis.vertical,
            containerWidth: 100,
            listHeight: 88,
          );
        case ProductsSummaryFailureState():
          return Text(state.apiErrorModel.getErrorMessages()!);
        case ProductsSummarySuccessState():
          return ProductsSummaryData(
            productsSummaryDataModel: state.productsSummaryDataModel,
          );
        default:
          return const SizedBox.shrink();
      }
    });
  }
}

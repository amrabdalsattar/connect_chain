import 'package:connect_chain/core/widgets/loading_indicator.dart';
import 'package:connect_chain/features/home/logic/products_summary_cubit/products_summary_cubit.dart';
import 'package:connect_chain/features/home/logic/products_summary_cubit/products_summary_states.dart';
import 'package:connect_chain/features/home/ui/sections/products_summary_section/widgets/products_summary_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsSummaryBlocBuilder extends StatelessWidget {
  const ProductsSummaryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsSummaryCubit, ProductsSummaryState>(
        builder: (_, state) {
      switch (state) {
        case ProductsSummaryLoadingState():
          return const LoadingIndicator();
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

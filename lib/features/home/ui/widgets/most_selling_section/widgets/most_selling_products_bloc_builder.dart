import '../../../../../../core/widgets/loading_indicator.dart';
import '../../../../logic/top_sold_products_cubit/top_sold_products_cubit.dart';
import 'most_selling_products_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../logic/top_sold_products_cubit/top_sold_products_states.dart';

class MostSellingProductsBlocBuilder extends StatelessWidget {
  const MostSellingProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopSoldProductsCubit, TopSoldProductsState>(
        builder: (_, state) {
      switch (state) {
        case TopSoldProductsLoadingState():
          return const Center(child: LoadingIndicator());
        case TopSoldProductsFailureState():
          return Text(state.apiErrorModel.getErrorMessages()!);
        case TopSoldProductsSuccessState():
          return MostSellingProductsListView(topSoldProducts: state.products);
        default:
          return const SizedBox.shrink();
      }
    });
  }
}

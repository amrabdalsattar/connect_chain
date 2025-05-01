import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/shimmer_loading_list.dart';
import '../../../../logic/top_sold_products_cubit/top_sold_products_cubit.dart';
import '../../../../logic/top_sold_products_cubit/top_sold_products_states.dart';
import 'most_selling_products_list_view.dart';

class MostSellingProductsBlocBuilder extends StatelessWidget {
  const MostSellingProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopSoldProductsCubit, TopSoldProductsState>(
        builder: (_, state) {
      switch (state) {
        case TopSoldProductsLoadingState():
          return const ShimmerLoadingList(
            itemCount: 3,
            containerHeight: 110,
            containerWidth: 110,
            scrollDirection: Axis.horizontal,
            listHeight: 88,
          );
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

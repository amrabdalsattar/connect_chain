import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/shimmer_loading_list.dart';
import '../../../../logic/orders_summary_cubit/orders_summary_cubit.dart';
import '../../../../logic/orders_summary_cubit/orders_summary_state.dart';
import 'orders_section_data.dart';

class OrdersSummaryBlocBuilder extends StatelessWidget {
  const OrdersSummaryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersSummaryCubit, OrdersSummaryState>(
      builder: (_, state) {
        switch (state) {
          case OrdersSummaryLoadingState():
            return const ShimmerLoadingList(
              itemCount: 3,
              containerHeight: 88,
              containerWidth: 100,
              scrollDirection: Axis.horizontal,
              listHeight: 88,
            );
          case OrdersSummaryFailureState():
            return Text(state.apiErrorModel.getErrorMessages()!);
          case OrdersSummarySuccessState():
            return OrdersSectionData(
              ordersSummaryDataModel: state.ordersSummaryDataModel,
            );
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}

import '../../../../../../core/widgets/loading_indicator.dart';
import '../../../../logic/orders_summary_cubit/dashboard_state.dart';
import '../../../../logic/orders_summary_cubit/orders_summary_cubit.dart';
import 'orders_section_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersSummaryBlocBuilder extends StatelessWidget {
  const OrdersSummaryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersSummaryCubit, OrdersSummaryState>(
      builder: (_, state) {
        switch (state) {
          case OrdersSummaryLoadingState():
            return const LoadingIndicator();
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

import '../../../../../../core/widgets/shimmer_loading_list.dart';
import '../../../../logic/monthly_statistics_cubit/monthly_statistics_cubit.dart';
import 'monthly_statistics_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../logic/monthly_statistics_cubit/monthly_statistics_states.dart';

class MonthlyStatisticsBlocBuilder extends StatelessWidget {
  const MonthlyStatisticsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MonthlyStatisticsCubit, MonthlyStatisticsState>(
      listener: (context, state) {},
      listenWhen: (previous, current) =>
          current is MonthlyStatisticsErrorState ||
          current is MonthlyStatisticsSuccessState ||
          current is MonthlyStatisticsLoadingState,
      builder: (_, state) {
        switch (state) {
          case MonthlyStatisticsLoadingState():
            return const ShimmerLoadingList(
              itemCount: 3,
              containerHeight: 88,
              containerWidth: 100,
              scrollDirection: Axis.horizontal,
              listHeight: 88,
            );
          case MonthlyStatisticsErrorState():
            return Text(
                state.apiErrorModel.getErrorMessages() ?? "Unknown Error");
          case MonthlyStatisticsSuccessState():
            return MonthlyStatisticsData(
                monthlyStatsDataModel: state.monthlyStatsDataModel);
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}

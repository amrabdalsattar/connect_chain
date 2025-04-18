import '../../../../logic/revenue_chart_cubit/revenue_chart_cubit.dart';
import '../../../../logic/revenue_chart_cubit/revenue_chart_states.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_line_chart.dart';

class RevenueChartBlocBuilder extends StatelessWidget {
  const RevenueChartBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RevenueChartCubit, RevenueChartState>(
      builder: (_, state) {
        return CustomLineChart(
          spotsData: state is RevenueChartSuccessState ? state.chartData : {},
        );
      },
    );
  }
}

import 'package:connect_chain/features/home/data/repos/monthly_stats_repo.dart';
import 'package:connect_chain/features/home/data/repos/orders_summary_repo.dart';
import 'package:connect_chain/features/home/data/repos/products_summary_repo.dart';
import 'package:connect_chain/features/home/data/repos/revenue_chart_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final RevenueChartRepo revenueChartRepo;
  final OrdersSummaryRepo ordersSummaryRepo;
  final ProductsSummaryRepo productsSummaryRepo;
  final MonthlyStatsRepo monthlyStatsRepo;
  DashboardCubit(
      {required this.revenueChartRepo,
      required this.ordersSummaryRepo,
      required this.productsSummaryRepo,
      required this.monthlyStatsRepo})
      : super(const DashboardState.initial());
}

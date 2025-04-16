import 'package:connect_chain/features/home/data/repos/monthly_stats_repo.dart';
import 'package:connect_chain/features/home/data/repos/orders_summary_repo.dart';
import 'package:connect_chain/features/home/data/repos/products_summary_repo.dart';
import 'package:connect_chain/features/home/data/repos/revenue_chart_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final MonthlyStatsRepo monthlyStatsRepo;
  final RevenueChartRepo revenueChartRepo;
  final OrdersSummaryRepo ordersSummaryRepo;
  final ProductsSummaryRepo productsSummaryRepo;
  DashboardCubit(
      {required this.revenueChartRepo,
      required this.ordersSummaryRepo,
      required this.productsSummaryRepo,
      required this.monthlyStatsRepo})
      : super(const DashboardState.initial());

  final int currentYear = DateTime.now().year;
  final int currentMonth = DateTime.now().month;
  final String supplierId =
      '20044e2f-7c63-4ea5-a458-c39729d93e62'; // Edit it lama el sabakeen yeb3toh m3 el login response

  void emitMonthlyStatisticsStates() async {
    emit(const DashboardState.monthlyStatisticsLoading());
    final result = await monthlyStatsRepo.getMonthlyStats(
        supplierId: supplierId, year: currentYear, month: currentMonth);
    result.when(
      success: (monthlyStatsDataModel) {
        emit(DashboardState.monthlyStatisticsSuccess(monthlyStatsDataModel));
      },
      failure: (apiErrorModel) => emit(
        DashboardState.monthlyStatisticsError(apiErrorModel),
      ),
    );
  }

  void emitRevenueChartStates() async {
    emit(const DashboardState.revenueChartLoading());
    final result = await revenueChartRepo.getRevenueChartData(
        supplierId: supplierId, year: currentYear);

    result.when(
        success: (chartData) =>
            emit(DashboardState.revenueChartSuccess(chartData)),
        failure: (apiErrorModel) =>
            emit(DashboardState.revenueChartError(apiErrorModel)));
  }

  void emitOrdersSummaryStates() async {
    emit(const DashboardState.ordersSummaryLoading());
    final result = await ordersSummaryRepo.getOrdersSummary(supplierId);

    result.when(
        success: (ordersSummaryDataModel) =>
            emit(DashboardState.ordersSummarySuccess(ordersSummaryDataModel)),
        failure: (apiErrorModel) =>
            emit(DashboardState.ordersSummaryError(apiErrorModel)));
  }

  void emitProductsSummaryStates() async {
    emit(const DashboardState.productsSummaryLoading());
    final result = await productsSummaryRepo.getProductsSummary(supplierId);

    result.when(
        success: (productsSummaryDataModel) => emit(
            DashboardState.productsSummarySuccess(productsSummaryDataModel)),
        failure: (apiErrorModel) =>
            emit(DashboardState.productsSummaryError(apiErrorModel)));
  }
}

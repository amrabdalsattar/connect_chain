import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../data/models/monthly_stats_response_model.dart';
import '../../data/models/orders_summary_response_model.dart';
import '../../data/models/products_summary_response_model.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _DashboardInitialState;

  // Monthly Statistics States
  const factory DashboardState.monthlyStatisticsLoading() =
      _DashboardMonthlyStatisticsLoadingState;
  const factory DashboardState.monthlyStatisticsSuccess(
          MonthlyStatsDataModel monthlyStatsDataModel) =
      _DashboardMonthlyStatisticsSuccessState;
  const factory DashboardState.monthlyStatisticsError(
      ApiErrorModel apiErrorModel) = _DashboardMonthlyStatisticsErrorState;

  // Revenue Chart States
  const factory DashboardState.revenueChartLoading() =
      _DashboardRevenueChartLoadingState;
  const factory DashboardState.revenueChartSuccess(Map<String, num> chartData) =
      _DashboardRevenueChartSuccessState;
  const factory DashboardState.revenueChartError(ApiErrorModel apiErrorModel) =
      _DashboardRevenueChartErrorState;

  // Orders Summary States
  const factory DashboardState.ordersSummaryLoading() =
      _DashboardOrdersSummaryLoadingState;
  const factory DashboardState.ordersSummarySuccess(
          OrdersSummaryDataModel ordersSummaryDataModel) =
      _DashboardOrdersSummarySuccessState;
  const factory DashboardState.ordersSummaryError(ApiErrorModel apiErrorModel) =
      _DashboardOrdersSummaryErrorState;

  // Products Summary States
  const factory DashboardState.productsSummaryLoading() =
      _DashboardProductsSummaryLoadingState;
  const factory DashboardState.productsSummarySuccess(
          ProductsSummaryDataModel productsSummaryDataModel) =
      _DashboardProductsSummarySuccessState;
  const factory DashboardState.productsSummaryError(
      ApiErrorModel apiErrorModel) = _DashboardProductsSummaryErrorState;
}

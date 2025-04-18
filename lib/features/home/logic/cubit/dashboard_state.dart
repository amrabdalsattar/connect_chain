import 'package:connect_chain/features/home/data/models/response_models/top_sold_products_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../data/models/response_models/monthly_stats_response_model.dart';
import '../../data/models/response_models/orders_summary_response_model.dart';
import '../../data/models/response_models/products_summary_response_model.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _DashboardInitialState;

  // Monthly Statistics States
  const factory DashboardState.monthlyStatisticsLoading() =
      MonthlyStatisticsLoadingState;
  const factory DashboardState.monthlyStatisticsSuccess(
          MonthlyStatsDataModel monthlyStatsDataModel) =
      MonthlyStatisticsSuccessState;
  const factory DashboardState.monthlyStatisticsError(
      ApiErrorModel apiErrorModel) = MonthlyStatisticsErrorState;

  // Revenue Chart States
  const factory DashboardState.revenueChartLoading() = RevenueChartLoadingState;
  const factory DashboardState.revenueChartSuccess(Map<String, num> chartData) =
      RevenueChartSuccessState;
  const factory DashboardState.revenueChartError(ApiErrorModel apiErrorModel) =
      RevenueChartErrorState;

  // Orders Summary States
  const factory DashboardState.ordersSummaryLoading() =
      OrdersSummaryLoadingState;
  const factory DashboardState.ordersSummarySuccess(
          OrdersSummaryDataModel ordersSummaryDataModel) =
      OrdersSummarySuccessState;
  const factory DashboardState.ordersSummaryError(ApiErrorModel apiErrorModel) =
      OrdersSummaryErrorState;

  // Products Summary States
  const factory DashboardState.productsSummaryLoading() =
      ProductsSummaryLoadingState;
  const factory DashboardState.productsSummarySuccess(
          ProductsSummaryDataModel productsSummaryDataModel) =
      ProductsSummarySuccessState;
  const factory DashboardState.productsSummaryError(
      ApiErrorModel apiErrorModel) = ProductsSummaryErrorState;

  // Top sold products States
  const factory DashboardState.topSoldProductsLoading() =
      TopSoldProductsLoadingState;
  const factory DashboardState.topSoldProductsSuccess(
          List<TopSoldProductDataModel> topSoldProducts) =
      TopSoldProductsSuccessState;
  const factory DashboardState.topSoldProductsError(
      ApiErrorModel apiErrorModel) = TopSoldProductsErrorState;
}

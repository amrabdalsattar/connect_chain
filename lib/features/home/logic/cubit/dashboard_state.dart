import 'package:connect_chain/features/home/data/models/response_models/top_sold_products_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../data/models/response_models/orders_summary_response_model.dart';
import '../../data/models/response_models/products_summary_response_model.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _DashboardInitialState;

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

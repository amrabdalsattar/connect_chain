import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/request_models/dashboard_request_model.dart';
import '../../domain/dashboard_use_case.dart';
import 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final DashboardUseCase _useCase;
  DashboardCubit(this._useCase) : super(const DashboardState.initial());

  final int currentYear = DateTime.now().year;
  final int currentMonth = DateTime.now().month;
  final String supplierId =
      '20044e2f-7c63-4ea5-a458-c39729d93e62'; // Edit it lama el sabakeen yeb3toh m3 el login response

  void getOrdersSummary() async {
    emit(const DashboardState.ordersSummaryLoading());
    final result = await _useCase.getOrdersSummary(supplierId);

    result.when(
        success: (ordersSummaryDataModel) =>
            emit(DashboardState.ordersSummarySuccess(ordersSummaryDataModel)),
        failure: (apiErrorModel) =>
            emit(DashboardState.ordersSummaryError(apiErrorModel)));
  }

  void getProductsSummary() async {
    emit(const DashboardState.productsSummaryLoading());
    final result = await _useCase.getProductsSummary(supplierId);

    result.when(
        success: (productsSummaryDataModel) => emit(
            DashboardState.productsSummarySuccess(productsSummaryDataModel)),
        failure: (apiErrorModel) =>
            emit(DashboardState.productsSummaryError(apiErrorModel)));
  }

  void getTopSoldProducts() async {
    emit(const DashboardState.topSoldProductsLoading());
    final result = await _useCase.getTopSoldProducts(DashboardRequestModel(
      supplierId: supplierId,
      year: currentYear,
      month: currentMonth,
      limit: 5,
    ));
    result.when(
        success: (topSoldProducts) =>
            emit(DashboardState.topSoldProductsSuccess(topSoldProducts)),
        failure: (apiErrorModel) =>
            emit(DashboardState.topSoldProductsError(apiErrorModel)));
  }
}

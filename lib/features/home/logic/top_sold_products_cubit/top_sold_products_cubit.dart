import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/request_models/dashboard_request_model.dart';
import '../../data/repos/top_sold_products_repo.dart';
import 'top_sold_products_states.dart';

class TopSoldProductsCubit extends Cubit<TopSoldProductsState> {
  final TopSoldProductsRepo _useCase;
  TopSoldProductsCubit(this._useCase) : super(TopSoldProductsInitialState());

  final int currentYear = DateTime.now().year;
  final int currentMonth = DateTime.now().month;

  Future<void> getTopSoldProducts() async {
    emit(const TopSoldProductsLoadingState());
    final result = await _useCase.getTopSoldProducts(DashboardRequestModel(
      year: currentYear,
      month: currentMonth,
      limit: 5,
    ));
    result.when(success: (topSoldProducts) {
      if (!isClosed) {
        emit(TopSoldProductsSuccessState(topSoldProducts));
      }
    }, failure: (apiErrorModel) {
      if (!isClosed) {
        emit(TopSoldProductsFailureState(apiErrorModel));
      }
    });
  }
}

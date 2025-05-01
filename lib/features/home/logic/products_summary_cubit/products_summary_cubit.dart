import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/cache/shared_preferences_helper.dart';
import '../../../../core/helpers/cache/shared_preferences_keys.dart';
import '../../data/repos/products_summary_repo.dart';
import 'products_summary_states.dart';

class ProductsSummaryCubit extends Cubit<ProductsSummaryState> {
  final ProductsSummaryRepo _repo;
  ProductsSummaryCubit(this._repo) : super(ProductsSummaryInitialState());

  final int currentYear = DateTime.now().year;
  final int currentMonth = DateTime.now().month;
  final String supplierId =
      SharedPreferencesHelper.getString(SharedPreferencesKeys.userId);

  Future<void> getProductsSummary() async {
    emit(const ProductsSummaryLoadingState());
    final result = await _repo.getProductsSummary(supplierId);

    result.when(success: (productsSummaryDataModel) {
      if (!isClosed) {
        emit(ProductsSummarySuccessState(productsSummaryDataModel));
      }
    }, failure: (apiErrorModel) {
      if (!isClosed) {
        emit(ProductsSummaryFailureState(apiErrorModel));
      }
    });
  }
}

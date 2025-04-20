import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/products_summary_repo.dart';
import 'products_summary_states.dart';

class ProductsSummaryCubit extends Cubit<ProductsSummaryState> {
  final ProductsSummaryRepo _repo;
  ProductsSummaryCubit(this._repo) : super(ProductsSummaryInitialState());

  final int currentYear = DateTime.now().year;
  final int currentMonth = DateTime.now().month;
  final String supplierId = '20044e2f-7c63-4ea5-a458-c39729d93e62';

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

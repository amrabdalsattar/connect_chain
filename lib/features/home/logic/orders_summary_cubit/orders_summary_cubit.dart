import '../../data/repos/orders_summary_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'orders_summary_state.dart';

class OrdersSummaryCubit extends Cubit<OrdersSummaryState> {
  final OrdersSummaryRepo _repo;
  OrdersSummaryCubit(this._repo) : super(OrdersSummaryInitialState());

  final int currentYear = DateTime.now().year;
  final int currentMonth = DateTime.now().month;
  final String supplierId = '20044e2f-7c63-4ea5-a458-c39729d93e62';

  Future<void> getOrdersSummary() async {
    emit(const OrdersSummaryLoadingState());
    final result = await _repo.getOrdersSummary(supplierId);

    result.when(success: (ordersSummaryDataModel) {
      if (!isClosed) {
        emit(OrdersSummarySuccessState(ordersSummaryDataModel));
      }
    }, failure: (apiErrorModel) {
      if (!isClosed) {
        emit(OrdersSummaryFailureState(apiErrorModel));
      }
    });
  }
}

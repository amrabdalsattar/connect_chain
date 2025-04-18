import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/request_models/dashboard_request_model.dart';
import '../../data/repos/monthly_stats_repo.dart';
import 'monthly_statistics_states.dart';

class MonthlyStatisticsCubit extends Cubit<MonthlyStatisticsState> {
  final MonthlyStatsRepo _repo;
  MonthlyStatisticsCubit(this._repo) : super(MonthlyStatisticsInitialState());

  final int currentYear = DateTime.now().year;
  final int currentMonth = DateTime.now().month;
  final String supplierId = '20044e2f-7c63-4ea5-a458-c39729d93e62';

  Future<void> getMonthlyStats() async {
    emit(const MonthlyStatisticsLoadingState());
    final result = await _repo.getMonthlyStats(DashboardRequestModel(
        supplierId: supplierId, year: currentYear, month: currentMonth));
    result.when(success: (monthlyStatsDataModel) {
      if (!isClosed) {
        emit(MonthlyStatisticsSuccessState(monthlyStatsDataModel));
      }
    }, failure: (apiErrorModel) {
      if (!isClosed) {
        emit(MonthlyStatisticsErrorState(apiErrorModel));
      }
    });
  }
}

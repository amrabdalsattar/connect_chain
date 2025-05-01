import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/cache/shared_preferences_helper.dart';
import '../../../../core/helpers/cache/shared_preferences_keys.dart';
import '../../data/models/request_models/dashboard_request_model.dart';
import '../../data/repos/monthly_stats_repo.dart';
import 'monthly_statistics_states.dart';

class MonthlyStatisticsCubit extends Cubit<MonthlyStatisticsState> {
  final MonthlyStatsRepo _repo;
  MonthlyStatisticsCubit(this._repo) : super(MonthlyStatisticsInitialState());

  final int currentYear = DateTime.now().year;
  final int currentMonth = DateTime.now().month;
  final String supplierId =
      SharedPreferencesHelper.getString(SharedPreferencesKeys.userId);

  Future<void> getMonthlyStats() async {
    emit(const MonthlyStatisticsLoadingState());
    final result = await _repo.getMonthlyStats(
        DashboardRequestModel(year: currentYear, month: currentMonth));
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

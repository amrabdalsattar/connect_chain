import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/cache/shared_preferences_helper.dart';
import '../../../../core/helpers/cache/shared_preferences_keys.dart';
import '../../data/repos/revenue_chart_repo.dart';
import 'revenue_chart_states.dart';

class RevenueChartCubit extends Cubit<RevenueChartState> {
  final RevenueChartRepo _repo;
  RevenueChartCubit(this._repo) : super(RevenueChartInitialState());

  final int currentYear = DateTime.now().year;
  final int currentMonth = DateTime.now().month;
  final String supplierId =
      SharedPreferencesHelper.getString(SharedPreferencesKeys.userId);

  Future<void> getRevenueChartData() async {
    emit(const RevenueChartLoadingState());
    final result = await _repo.getRevenueChartData(
        supplierId: supplierId, year: currentYear);

    result.when(success: (chartData) {
      if (!isClosed) {
        emit(RevenueChartSuccessState(_getLineChartSpots(chartData)));
      }
    }, failure: (apiErrorModel) {
      if (!isClosed) {
        emit(RevenueChartFailureState(apiErrorModel));
      }
    });
  }

  Map<String, num> _getLineChartSpots(Map<String, num> spots) {
    if (spots.isEmpty) return spots;

    final firstKey = int.tryParse(spots.keys.first) ?? 0;
    if (firstKey <= 0) return spots;

    final result = <String, num>{};

    for (int i = 1; i < firstKey; i++) {
      result['$i'] = 0;
    }

    result.addAll(spots);

    return result;
  }
}

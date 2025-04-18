import 'package:connect_chain/features/home/domain/dashboard_use_case.dart';
import 'package:connect_chain/features/home/logic/revenue_chart_cubit/revenue_chart_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RevenueChartCubit extends Cubit<RevenueChartState> {
  final DashboardUseCase _useCase;
  RevenueChartCubit(this._useCase) : super(RevenueChartInitialState());

  final int currentYear = DateTime.now().year;
  final int currentMonth = DateTime.now().month;
  final String supplierId = '20044e2f-7c63-4ea5-a458-c39729d93e62';

  Future<void> getRevenueChartData() async {
    emit(const RevenueChartLoadingState());
    final result = await _useCase.getRevenueChartData(
        supplierId: supplierId, year: currentYear);

    result.when(
        success: (chartData) {
          emit(RevenueChartSuccessState(_getLineChartSpots(chartData)));
        },
        failure: (apiErrorModel) =>
            emit(RevenueChartFailureState(apiErrorModel)));
  }

  Map<String, num> _getLineChartSpots(Map<String, num> spots) {
    if (spots.isEmpty) return spots;

    final firstKey = int.tryParse(spots.keys.first) ?? 0;
    if (firstKey <= 0) return spots;

    final result = <String, num>{};

    for (int i = 0; i < firstKey; i++) {
      result['$i'] = 0;
    }

    result.addAll(spots);

    return result;
  }
}

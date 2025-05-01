import '../../../../core/networking/api_error_handler/api_error_model.dart';

sealed class RevenueChartState {
  const RevenueChartState();
}

class RevenueChartInitialState extends RevenueChartState {}

class RevenueChartLoadingState extends RevenueChartState {
  const RevenueChartLoadingState();
}

class RevenueChartSuccessState extends RevenueChartState {
  final Map<String, num> chartData;
  const RevenueChartSuccessState(this.chartData);
}

class RevenueChartFailureState extends RevenueChartState {
  final ApiErrorModel apiErrorModel;
  const RevenueChartFailureState(this.apiErrorModel);
}

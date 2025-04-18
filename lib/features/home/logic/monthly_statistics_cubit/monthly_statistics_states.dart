import 'package:connect_chain/core/networking/api_error_handler/api_error_model.dart';

import '../../data/models/response_models/monthly_stats_response_model.dart';

sealed class MonthlyStatisticsState {
  const MonthlyStatisticsState();
}

class MonthlyStatisticsInitialState extends MonthlyStatisticsState {}

class MonthlyStatisticsLoadingState extends MonthlyStatisticsState {
  const MonthlyStatisticsLoadingState();
}

class MonthlyStatisticsErrorState extends MonthlyStatisticsState {
  final ApiErrorModel apiErrorModel;
  const MonthlyStatisticsErrorState(this.apiErrorModel);
}

class MonthlyStatisticsSuccessState extends MonthlyStatisticsState {
  final MonthlyStatsDataModel monthlyStatsDataModel;
  const MonthlyStatisticsSuccessState(this.monthlyStatsDataModel);
}

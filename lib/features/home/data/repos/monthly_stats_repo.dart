import 'package:connect_chain/core/networking/api_error_handler/api_error_handler.dart';
import 'package:connect_chain/core/networking/api_result.dart';
import 'package:connect_chain/features/home/data/datasources/monthly_stats_data_source.dart';
import 'package:connect_chain/features/home/data/models/response_models/monthly_stats_response_model.dart';

import '../models/request_models/dashboard_request_model.dart';

class MonthlyStatsRepo {
  final MonthlyStatsDataSource _dataSource;
  const MonthlyStatsRepo(this._dataSource);

  Future<ApiResult<MonthlyStatsDataModel>> getMonthlyStats(
      DashboardRequestModel requestModel) async {
    try {
      final response = await _dataSource.getMonthlyStats(requestModel);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

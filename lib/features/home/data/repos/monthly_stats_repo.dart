import 'package:connect_chain/core/networking/api_error_handler/api_error_handler.dart';
import 'package:connect_chain/core/networking/api_result.dart';
import 'package:connect_chain/features/home/data/datasources/monthly_stats_data_source.dart';
import 'package:connect_chain/features/home/data/models/monthly_stats_response_model.dart';

class MonthlyStatsRepo {
  final MonthlyStatsDataSource _dataSource;
  const MonthlyStatsRepo(this._dataSource);

  Future<ApiResult<MonthlyStatsDataModel>> getMonthlyStats({
    required int month,
    required String supplierId,
    required int year,
  }) async {
    try {
      final response = await _dataSource.getMonthlyStats(
        month: month,
        supplierId: supplierId,
        year: year,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

import 'package:connect_chain/core/networking/api_error_handler/api_error_handler.dart';
import 'package:connect_chain/core/networking/api_result.dart';
import 'package:connect_chain/features/home/data/datasources/revenue_chart_data_source.dart';

class RevenueChartRepo {
  final RevenueChartDataSource _dataSource;
  const RevenueChartRepo(this._dataSource);

  Future<ApiResult<Map<String, num>>> getRevenueChartData({
    required String supplierId,
    required int year,
  }) async {
    try {
      final response = await _dataSource.getRevenueChartData(
          supplierId: supplierId, year: year);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

import '../../../../core/networking/api_error_handler/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../datasources/orders_summary_datasource.dart';
import '../models/response_models/orders_summary_response_model.dart';

class OrdersSummaryRepo {
  final OrdersSummaryDatasource _datasource;
  const OrdersSummaryRepo(this._datasource);
  Future<ApiResult<OrdersSummaryDataModel>> getOrdersSummary(
      String supplierId) async {
    try {
      final response = await _datasource.getOrdersSummary(supplierId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

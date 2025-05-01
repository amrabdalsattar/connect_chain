import '../../../../core/networking/api_error_handler/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../datasources/products_summary_datasource.dart';
import '../models/response_models/products_summary_response_model.dart';

class ProductsSummaryRepo {
  final ProductsSummaryDatasource _datasource;
  const ProductsSummaryRepo(this._datasource);

  Future<ApiResult<ProductsSummaryDataModel>> getProductsSummary(
      String supplierId) async {
    try {
      final response = await _datasource.getProductsSummary(supplierId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

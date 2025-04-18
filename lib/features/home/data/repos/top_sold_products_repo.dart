import '../../../../core/networking/api_error_handler/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../datasources/top_sold_products_datasource.dart';
import '../models/request_models/dashboard_request_model.dart';
import '../models/response_models/top_sold_products_response_model.dart';

class TopSoldProductsRepo {
  final TopSoldProductsDatasource _datasource;
  const TopSoldProductsRepo(this._datasource);

  Future<ApiResult<List<TopSoldProductDataModel>>> getTopSoldProducts(
      DashboardRequestModel requestModel) async {
    try {
      final response = await _datasource.getTopSoldProducts(requestModel);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

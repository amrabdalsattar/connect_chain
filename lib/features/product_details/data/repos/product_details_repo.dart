import 'package:connect_chain/core/networking/api_error_handler/api_error_handler.dart';

import '../../../../core/networking/api_result.dart';
import '../datasource/product_details_datasource.dart';
import '../models/product_details_response_model.dart';

class ProductDetailsRepo {
  final ProductDetailsDatasource _productDetailsDatasource;
  const ProductDetailsRepo(this._productDetailsDatasource);

  Future<ApiResult<ProductDetailsResponseModel>> getProductDetails(
      int id) async {
    try {
      final result = await _productDetailsDatasource.fetchProductDetails(id);

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

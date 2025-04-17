import 'package:connect_chain/core/networking/api_constants.dart';
import 'package:connect_chain/core/networking/api_helper.dart';
import 'package:connect_chain/core/networking/api_request_model.dart';

import '../models/product_details_response_model.dart';

class ProductDetailsDatasource {
  final ApiHelper _apiHelper;
  const ProductDetailsDatasource(this._apiHelper);

  Future<ProductDetailsResponseModel> fetchProductDetails(int id) async {
    final result = await _apiHelper.get(
      ApiRequestModel(
          endPoint: ApiConstants.getProductDetailsEP,
          queries: {"productId": id}),
    );

    ProductDetailsResponseModel productDetailsModel =
        ProductDetailsResponseModel.fromJson(result['data']);

    return productDetailsModel;
  }
}

import '../../../../core/helpers/token_helper.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/api_helper.dart';
import '../../../../core/networking/api_request_model.dart';
import '../models/product_details_response_model.dart';

class ProductDetailsDatasource {
  final ApiHelper _apiHelper;
  const ProductDetailsDatasource(this._apiHelper);

  Future<ProductDetailsResponseModel> fetchProductDetails(int id) async {
    final result = await _apiHelper.get(
      ApiRequestModel(
        endPoint: ApiConstants.getProductDetailsEP,
        queries: {"productId": id},
        headers: {
          'Authorization': 'Bearer ${await TokenHelper.getSecuredUserToken()}',
        },
      ),
    );

    ProductDetailsResponseModel productDetailsModel =
        ProductDetailsResponseModel.fromJson(result['data']);

    return productDetailsModel;
  }
}

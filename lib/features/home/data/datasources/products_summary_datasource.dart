import '../../../../core/helpers/token_helper.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/api_helper.dart';
import '../../../../core/networking/api_request_model.dart';
import '../models/response_models/products_summary_response_model.dart';

class ProductsSummaryDatasource {
  final ApiHelper _apiHelper;
  const ProductsSummaryDatasource(this._apiHelper);

  Future<ProductsSummaryDataModel> getProductsSummary(String supplierId) async {
    final response = await _apiHelper.get(ApiRequestModel(
      endPoint: ApiConstants.productsSummaryEP,
      headers: {
        'Authorization': 'Bearer ${await TokenHelper.getSecuredUserToken()}',
      },
    ));
    final ProductsSummaryResponseModel productsSummaryResponseModel =
        ProductsSummaryResponseModel.fromJson(response);

    return productsSummaryResponseModel.productsSummaryData;
  }
}

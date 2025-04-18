import 'package:connect_chain/core/networking/api_constants.dart';
import 'package:connect_chain/core/networking/api_helper.dart';
import 'package:connect_chain/core/networking/api_request_model.dart';
import 'package:connect_chain/features/home/data/models/response_models/products_summary_response_model.dart';

class ProductsSummaryDatasource {
  final ApiHelper _apiHelper;
  const ProductsSummaryDatasource(this._apiHelper);

  Future<ProductsSummaryDataModel> getProductsSummary(String supplierId) async {
    final response = await _apiHelper.get(ApiRequestModel(
      endPoint: ApiConstants.productsSummaryEP,
      queries: {
        'supplierId': supplierId,
      },
    ));
    ProductsSummaryResponseModel productsSummaryResponseModel =
        ProductsSummaryResponseModel.fromJson(response);

    return productsSummaryResponseModel.productsSummaryData;
  }
}

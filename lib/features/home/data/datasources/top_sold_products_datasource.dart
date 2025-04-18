import 'package:connect_chain/core/networking/api_constants.dart';
import 'package:connect_chain/core/networking/api_helper.dart';
import 'package:connect_chain/core/networking/api_request_model.dart';
import 'package:connect_chain/features/home/data/models/response_models/top_sold_products_response_model.dart';

import '../models/request_models/dashboard_request_model.dart';

class TopSoldProductsDatasource {
  final ApiHelper _apiHelper;
  const TopSoldProductsDatasource(this._apiHelper);

  Future<List<TopSoldProductDataModel>> getTopSoldProducts(
      DashboardRequestModel requestModel) async {
    final response = await _apiHelper.get(
      ApiRequestModel(
          endPoint: ApiConstants.topSoldProductsEP,
          body: requestModel.paginatedToJson()),
    );
    TopSoldProductsResponseModel responseModel =
        TopSoldProductsResponseModel.fromJson(response);
    return responseModel.topSoldProducts;
  }
}

import '../../../../core/helpers/token_helper.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/api_helper.dart';
import '../../../../core/networking/api_request_model.dart';
import '../models/response_models/orders_summary_response_model.dart';

class OrdersSummaryDatasource {
  final ApiHelper _apiHelper;
  const OrdersSummaryDatasource(this._apiHelper);

  Future<OrdersSummaryDataModel> getOrdersSummary(String supplierId) async {
    final response = await _apiHelper.get(ApiRequestModel(
      endPoint: ApiConstants.ordersSummaryEP,
      headers: {
        'Authorization': 'Bearer ${await TokenHelper.getSecuredUserToken()}',
      },
    ));
    final OrdersSummaryResponseModel ordersSummaryResponseModel =
        OrdersSummaryResponseModel.fromJson(response);

    return ordersSummaryResponseModel.ordersSummaryDataModel;
  }
}

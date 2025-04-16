import 'package:connect_chain/core/networking/api_constants.dart';
import 'package:connect_chain/core/networking/api_helper.dart';
import 'package:connect_chain/core/networking/api_request_model.dart';
import 'package:connect_chain/features/home/data/models/orders_summary_response_model.dart';

class OrdersSummaryDatasource {
  final ApiHelper _apiHelper;
  const OrdersSummaryDatasource(this._apiHelper);

  Future<OrdersSummaryDataModel> getOrdersSummary(String supplierId) async {
    final response = await _apiHelper.get(ApiRequestModel(
      endPoint: ApiConstants.ordersSummaryEP,
      body: {
        'supplierId': supplierId,
      },
    ));
    OrdersSummaryResponseModel ordersSummaryResponseModel =
        OrdersSummaryResponseModel.fromJson(response);

    return ordersSummaryResponseModel.ordersSummaryDataModel;
  }
}

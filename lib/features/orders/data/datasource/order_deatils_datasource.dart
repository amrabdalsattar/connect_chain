import 'package:connect_chain/core/networking/api_constants.dart';
import 'package:connect_chain/core/networking/api_helper.dart';
import 'package:connect_chain/core/networking/api_request_model.dart';
import 'package:connect_chain/features/orders/data/models/order_details_response_model.dart';

class OrderDeatilsDatasource {
  final ApiHelper _apiHelper;

  OrderDeatilsDatasource(this._apiHelper);

  Future<OrderDetailsResponseModel> fetchOrderDetails(int orderId) async {
    final result = await _apiHelper.get(ApiRequestModel(
        endPoint: ApiConstants.getOrderDetails,
        queries: {ApiConstants.orderId: orderId}));

    return OrderDetailsResponseModel.fromJson(result['data']);
  }
}

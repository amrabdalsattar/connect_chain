import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/api_helper.dart';
import '../../../../core/networking/api_request_model.dart';
import '../models/order_details_response_model.dart';

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

import 'package:connect_chain/core/networking/api_error_handler/api_error_handler.dart';
import 'package:connect_chain/core/networking/api_result.dart';
import 'package:connect_chain/features/orders/data/datasource/order_deatils_datasource.dart';
import 'package:connect_chain/features/orders/data/models/order_details_response_model.dart';

class OrderDetailsRepo {
  final OrderDeatilsDatasource _orderDeatilsDatasource;

  OrderDetailsRepo(this._orderDeatilsDatasource);

  Future<ApiResult<OrderDetailsResponseModel>> fetchOrderDetails(
      int orderId) async {
    try {
      final result = await _orderDeatilsDatasource.fetchOrderDetails(orderId);

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

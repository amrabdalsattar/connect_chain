import '../../../../core/networking/api_error_handler/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../datasource/order_deatils_datasource.dart';
import '../models/order_details_response_model.dart';

class OrderDetailsRepo {
  final OrderDetailsDatasource _orderDeatilsDatasource;

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

import '../../../../core/networking/api_error_handler/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../datasource/orders_datasource.dart';
import '../models/order_response_model.dart';

class OrdersRepo {
  final OrdersDatasource _ordersDatasource;

  OrdersRepo(this._ordersDatasource);

  Future<ApiResult<List<OrderModel>>> fetchSupplierOrders(String supplierId,
      {int? orderStatusIndex}) async {
    try {
      final result = await _ordersDatasource.fetchSupplierOrders(supplierId,
          orderStatusIndex: orderStatusIndex);

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

import 'package:connect_chain/core/networking/api_error_handler/api_error_handler.dart';
import 'package:connect_chain/core/networking/api_result.dart';
import 'package:connect_chain/features/orders/data/datasource/orders_datasource.dart';
import 'package:connect_chain/features/orders/data/models/order_response_model.dart';

class OrdersRepo {
  final OrdersDatasource _ordersDatasource;

  OrdersRepo(this._ordersDatasource);

  Future<ApiResult<OrdersResponseModel>> fetchSupplierOrders(String supplierId,
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

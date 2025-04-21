import 'package:connect_chain/core/networking/api_constants.dart';
import 'package:connect_chain/core/networking/api_helper.dart';
import 'package:connect_chain/core/networking/api_request_model.dart';
import 'package:connect_chain/features/orders/data/models/order_response_model.dart';

class OrdersDatasource {
  final ApiHelper _apiHelper;

  OrdersDatasource(this._apiHelper);

  Future<OrdersResponseModel> fetchSupplierOrders(String supplierId,
      {int? orderStatusIndex}) async {
    final result = await _apiHelper.get(ApiRequestModel(
        endPoint: ApiConstants.getSupplierOrders,
        queries: {
          ApiConstants.orderStatus: orderStatusIndex,
          ApiConstants.supplierId: supplierId
        }));

    OrdersResponseModel ordersResponseModel =
        OrdersResponseModel.fromJson(result);

    return ordersResponseModel;
  }
}

import 'package:connect_chain/core/networking/api_error_handler/api_error_handler.dart';
import 'package:connect_chain/core/networking/api_result.dart';
import 'package:connect_chain/features/add_product/data/datasources/add_product_datasource.dart';
import 'package:connect_chain/features/add_product/data/models/add_product_model.dart';

class AddProductRepo {
  final AddProductDatasource _addProductDatasource;
  const AddProductRepo(this._addProductDatasource);

  Future<ApiResult<void>> addProduct(
      {required AddProductRequestModel addProductRequestModel}) async {
    try {
      await _addProductDatasource.addProduct(addProductRequestModel);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

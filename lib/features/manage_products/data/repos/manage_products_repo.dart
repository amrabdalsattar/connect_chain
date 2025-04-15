import 'package:connect_chain/core/networking/api_error_handler/api_error_handler.dart';
import 'package:connect_chain/core/networking/api_result.dart';
import 'package:connect_chain/features/manage_products/data/datasource/manage_products_datasource.dart';
import 'package:connect_chain/features/manage_products/data/models/manage_supplier_products_request_model.dart';

class ManageProductsRepo {
  final ManageProductsDatasource _datasource;
  const ManageProductsRepo(this._datasource);

  Future<ApiResult<ManageSupplierProductsResponseModel>>
      getSupplierProducts() async {
    try {
      final result = await _datasource.getSupplierProducts();
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<String>> deleteProduct(int productId) async {
    try {
      await _datasource.deleteProduct(productId);
      return const ApiResult.success('تم حذف المنتج بنجاح');  
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

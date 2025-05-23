import '../../../../core/networking/api_error_handler/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../datasource/edit_product_datasource.dart';
import '../model/edit_product_request_model.dart';

class EditProductRepo {
  final EditProductDatasource _editProductDatasource;
  const EditProductRepo(this._editProductDatasource);

  Future<ApiResult<void>> updateProduct(
      EditProductRequestModel editProductModel) async {
    try {
      await _editProductDatasource.updateProduct(editProductModel);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<EditProductRequestModel>> getProductForUpdate(
      int productId) async {
    try {
      final result =
          await _editProductDatasource.getProductForUpdate(productId);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<void>> deleteProductImage(String imageId) async {
    try {
      await _editProductDatasource.deleteProductImage(int.parse(imageId));
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

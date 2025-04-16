import 'package:connect_chain/core/networking/api_error_handler/api_error_handler.dart';
import 'package:connect_chain/core/networking/api_result.dart';
import 'package:connect_chain/features/edit_product/data/datasource/edit_product_datasourece.dart';
import 'package:connect_chain/features/edit_product/data/model/edit_product_request_model.dart';

class EditProductRepo {
  final EditProductDatasource _editProductDatasource;
  const EditProductRepo(this._editProductDatasource);

  Future<ApiResult<void>> updateProduct(EditProductRequestModel editProductModel) async {
    try {
      await _editProductDatasource.updateProduct(editProductModel);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

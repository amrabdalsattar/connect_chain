import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/api_helper.dart';
import '../../../../core/networking/api_request_model.dart';
import '../model/edit_product_request_model.dart';

class EditProductDatasource {
  final ApiHelper _apiHelper;

  EditProductDatasource(this._apiHelper);

  Future<void> updateProduct(EditProductRequestModel editProductModel) async {
    await _apiHelper.put(ApiRequestModel(
        endPoint: ApiConstants.updateProductEP,
        queries: {ApiConstants.productId: editProductModel.productId},
        formData: await editProductModel.toFormData()));
  }

  Future<EditProductRequestModel> getProductForUpdate(int productId) async {
    final result = await _apiHelper.get(ApiRequestModel(
        endPoint: ApiConstants.getProductForUpdateEp,
        queries: {ApiConstants.productId: productId}));

    return EditProductRequestModel.fromJson(result['data']);
  }

  // Image Operation

  Future<void> deleteProductImage(int imageId) async {
    await _apiHelper.delete(
      ApiRequestModel(
          endPoint: ApiConstants.deleteProductImageEP,
          queries: {"id": imageId}),
    );
  }
}

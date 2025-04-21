import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/api_helper.dart';
import '../../../../core/networking/api_request_model.dart';
import '../models/manage_supplier_products_request_model.dart';

class ManageProductsDatasource {
  final ApiHelper _apiHelper;
  const ManageProductsDatasource(this._apiHelper);

  // Remember to Modify this to take the real Supplier Id
  Future<ManageSupplierProductsResponseModel> getSupplierProducts() async {
    final result = await _apiHelper.get(const ApiRequestModel(
        endPoint: ApiConstants.getSupplierProductsEP,
        queries: {
          ApiConstants.supplierId: "20044e2f-7c63-4ea5-a458-c39729d93e62"
        }));
    ManageSupplierProductsResponseModel products =
        ManageSupplierProductsResponseModel.fromJson(result);
    return products;
  }

  Future<void> deleteProduct(int productId) async {
    await _apiHelper.delete(ApiRequestModel(
      endPoint: '${ApiConstants.deleteProductEP}/$productId',
    ));
  }
}

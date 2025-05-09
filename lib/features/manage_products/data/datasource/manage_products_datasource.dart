import '../../../../core/helpers/cache/shared_preferences_helper.dart';
import '../../../../core/helpers/cache/shared_preferences_keys.dart';
import '../../../../core/helpers/token_helper.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/api_helper.dart';
import '../../../../core/networking/api_request_model.dart';
import '../models/manage_supplier_products_request_model.dart';

class ManageProductsDatasource {
  final ApiHelper _apiHelper;
  const ManageProductsDatasource(this._apiHelper);

  Future<ManageSupplierProductsResponseModel> getSupplierProducts() async {
    final result = await _apiHelper.get(
      ApiRequestModel(
        endPoint: ApiConstants.getSupplierProductsEP,
        queries: {
          ApiConstants.supplierId:
              SharedPreferencesHelper.getString(SharedPreferencesKeys.userId),
        },
        headers: {
          'Authorization': 'Bearer ${await TokenHelper.getSecuredUserToken()}'
        },
      ),
    );
    final ManageSupplierProductsResponseModel products =
        ManageSupplierProductsResponseModel.fromJson(result);
    return products;
  }

  Future<void> deleteProduct(int productId) async {
    await _apiHelper.delete(ApiRequestModel(
        endPoint: '${ApiConstants.deleteProductEP}/$productId',
        headers: {
          'Authorization': 'Bearer ${await TokenHelper.getSecuredUserToken()}',
        }));
  }
}

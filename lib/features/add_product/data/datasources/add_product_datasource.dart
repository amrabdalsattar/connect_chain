import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/api_helper.dart';
import '../../../../core/networking/api_request_model.dart';
import '../models/add_product_model.dart';

class AddProductDatasource {
  final ApiHelper _apiHelper;
  const AddProductDatasource(this._apiHelper);

  Future<void> addProduct(AddProductRequestModel requestModel) async {
    final formData = await requestModel.toFormData();

    await _apiHelper.post(
      ApiRequestModel(
        endPoint: ApiConstants.addProductEP,
        formData: formData,
      ),
    );
  }
}

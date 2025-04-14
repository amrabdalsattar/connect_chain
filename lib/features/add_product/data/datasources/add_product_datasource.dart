import 'package:connect_chain/features/add_product/data/models/add_product_model.dart';
import 'package:connect_chain/core/networking/api_constants.dart';
import 'package:connect_chain/core/networking/api_helper.dart';
import 'package:connect_chain/core/networking/api_request_model.dart';

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

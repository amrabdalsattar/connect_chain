import 'package:connect_chain/core/networking/api_constants.dart';
import 'package:connect_chain/core/networking/api_helper.dart';
import 'package:connect_chain/core/networking/api_request_model.dart';
import 'package:connect_chain/features/add_product/data/models/product_model.dart';

class AddProductDatasource {
  final ApiHelper _apiHelper;
  const AddProductDatasource(this._apiHelper);

  Future<void> addProduct({
    required ProductModel productModel,
  }) async {
    final result = await _apiHelper.post(
      ApiRequestModel(
          endPoint: ApiConstants.addProductEP, body: productModel.toJson()),
    );

  
  }
}

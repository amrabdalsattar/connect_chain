import 'package:connect_chain/core/networking/api_constants.dart';
import 'package:connect_chain/core/networking/api_helper.dart';
import 'package:connect_chain/core/networking/api_request_model.dart';
import 'package:connect_chain/features/edit_product/data/model/edit_product_request_model.dart';
import 'package:dio/dio.dart';

class EditProductDatasource {
  final ApiHelper _apiHelper;

  EditProductDatasource(this._apiHelper);

  Future<void> updateProduct(EditProductRequestModel eidtProductModel) async {
    await _apiHelper.put(ApiRequestModel(
        endPoint: ApiConstants.updateProductEP,
        formData: FormData.fromMap(eidtProductModel.toJson())));
  }
}

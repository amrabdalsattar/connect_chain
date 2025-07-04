import '../../../../core/helpers/token_helper.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/api_helper.dart';
import '../../../../core/networking/api_request_model.dart';
import '../models/add_product_model.dart';
import '../models/category_model.dart';

class AddProductDatasource {
  final ApiHelper _apiHelper;
  const AddProductDatasource(this._apiHelper);

  Future<void> addProduct(AddProductRequestModel requestModel) async {
    final formData = await requestModel.toFormData();

    await _apiHelper.post(
      ApiRequestModel(
        endPoint: ApiConstants.addProductEP,
        headers: {
          'Authorization': 'Bearer ${await TokenHelper.getSecuredUserToken()}',
        },
        formData: formData,
      ),
    );
  }

  Future<List<CategoryModel>> getAllCategories() async {
    final response = await _apiHelper.get(
      const ApiRequestModel(endPoint: ApiConstants.getAllCategoriesEP),
    );
    final categories = (response['data'] as List)
        .map((category) =>
            CategoryModel.fromJson(category as Map<String, dynamic>))
        .toList();
    print('The Categories is ${response['data']}');
    return categories;
  }
}

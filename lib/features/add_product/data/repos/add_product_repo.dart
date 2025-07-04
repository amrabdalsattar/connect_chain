import '../../../../core/networking/api_error_handler/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../datasources/add_product_datasource.dart';
import '../models/add_product_model.dart';
import '../models/category_model.dart';

class AddProductRepo {
  final AddProductDatasource _addProductDatasource;
  const AddProductRepo(this._addProductDatasource);

  Future<ApiResult<void>> addProduct(
      {required AddProductRequestModel addProductRequestModel}) async {
    try {
      await _addProductDatasource.addProduct(addProductRequestModel);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<CategoryModel>>> getAllCategories() async {
    try {
      final response = await _addProductDatasource.getAllCategories();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

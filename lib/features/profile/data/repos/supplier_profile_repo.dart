import '../models/update_profile_request_model.dart';

import '../../../../core/networking/api_error_handler/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../datasource/supplier_profile_datasource.dart';
import '../models/profile_response_model.dart';

class SupplierProfileRepo {
  final SupplierProfileDatasource _datasource;
  const SupplierProfileRepo(this._datasource);

  Future<ApiResult<SupplierData>> getSupplierProfile() async {
    try {
      final result = await _datasource.getSupplierProfile();
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<void>> updateSupplierProfile(
      UpdateProfileRequestModel requestModel) async {
    try {
      final result = await _datasource.updateSupplierProfile(requestModel);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

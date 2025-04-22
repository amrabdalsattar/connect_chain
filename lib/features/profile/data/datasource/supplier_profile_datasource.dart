import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/api_request_model.dart';
import '../models/profile_response_model.dart';

import '../../../../core/networking/api_helper.dart';

class SupplierProfileDatasource {
  final ApiHelper _apiHelper;
  const SupplierProfileDatasource(this._apiHelper);

  Future<SupplierData> getSupplierProfile() async {
    final response = await _apiHelper.get(ApiRequestModel(
      endPoint: ApiConstants.supplierProfile,
    ));
    SupplierProfileResponse supplierProfileResponse =
        SupplierProfileResponse.fromJson(response);
    return supplierProfileResponse.supplierData!;
  }
}

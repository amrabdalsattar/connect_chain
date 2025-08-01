import '../../../../core/helpers/token_helper.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/api_helper.dart';
import '../../../../core/networking/api_request_model.dart';
import '../models/create_quotation_request_model.dart';
import '../models/supplier_quotations_request.dart';

class RfqResponseDatasource {
  final ApiHelper _apiHelper;

  RfqResponseDatasource(this._apiHelper);

  Future<void> createQuotation(CreateQuotationRequestModel quotation) async {
    await _apiHelper.post(ApiRequestModel(
      headers: {
        'Authorization': 'Bearer ${await TokenHelper.getSecuredUserToken()}',
      },
      endPoint: ApiConstants.createQuotationEp,
      body: quotation.toJson(),
    ));
  }

  Future<SupplierRFQsRequest> getSupplierRFQs() async {
    final Map<String, dynamic> response = await _apiHelper.get(ApiRequestModel(
      endPoint: ApiConstants.supplierRFQsEP,
      headers: {
        'Authorization': 'Bearer ${await TokenHelper.getSecuredUserToken()}',
      },
    ));
    return SupplierRFQsRequest.fromJson(response);
  }
}

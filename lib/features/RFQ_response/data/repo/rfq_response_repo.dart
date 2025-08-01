import '../../../../core/networking/api_error_handler/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../datasource/rfq_response_datasource.dart';
import '../models/create_quotation_request_model.dart';
import '../models/supplier_quotations_request.dart';

class RfqResponseRepo {
  final RfqResponseDatasource _rfqRepo;

  RfqResponseRepo(this._rfqRepo);

  Future<ApiResult<String>> createQuotation(
      CreateQuotationRequestModel quotation) async {
    try {
      await _rfqRepo.createQuotation(quotation);
      return const ApiResult.success('Quotatoin Created Succesfully');
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<SupplierRFQsRequest>> getSupplierRFQs() async {
    try {
      final response = await _rfqRepo.getSupplierRFQs();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

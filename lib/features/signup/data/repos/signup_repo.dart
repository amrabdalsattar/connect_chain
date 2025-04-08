import 'package:connect_chain/core/networking/api_error_handler/api_error_handler.dart';
import 'package:connect_chain/features/signup/data/models/signup_request_model.dart';

import '../../../../core/networking/api_result.dart';
import '../datasources/signup_data_source.dart';

class SignupRepo {
  final SignupDataSource _signupDataSource;
  const SignupRepo(this._signupDataSource);

  Future<ApiResult<String>> signup(
      SignupRequestModel signupRequestModel) async {
    try {
      await _signupDataSource.signup(signupRequestModel);
      return const ApiResult.success(
          'Email Confirmation Sent , Please Confirm Your Email');
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

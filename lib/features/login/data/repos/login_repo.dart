import 'package:connect_chain/core/networking/api_error_handler/api_error_handler.dart';
import 'package:connect_chain/features/login/data/datasources/login_datasource.dart';
import 'package:connect_chain/features/login/data/models/login_response_model.dart';

import '../../../../core/networking/api_result.dart';

class LoginRepo {
  final LoginDatasource _loginDatasource;
  const LoginRepo(this._loginDatasource);
  Future<ApiResult<LoginResponseModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      var result = await _loginDatasource.login(
        email: email,
        password: password,
      );
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

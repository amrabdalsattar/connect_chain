import 'package:connect_chain/core/networking/api_constants.dart';
import 'package:connect_chain/core/networking/api_helper.dart';
import 'package:connect_chain/core/networking/api_request_model.dart';
import 'package:connect_chain/features/login/data/models/login_response_model.dart';

class LoginDatasource {
  final ApiHelper _apiHelper;
  const LoginDatasource(this._apiHelper);

  Future<LoginResponseModel> login({
    required String email,
    required String password,
  }) async {
    final result = await _apiHelper.post(
      ApiRequestModel(endPoint: ApiConstants.loginEP, body: {
        "email": email,
        "password": password,
      }),
    );
    LoginResponseModel loginResponseModel = LoginResponseModel.fromJson(result);

    return loginResponseModel;
  }
}

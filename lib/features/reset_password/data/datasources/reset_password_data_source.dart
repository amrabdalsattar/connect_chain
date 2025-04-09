import 'package:connect_chain/core/networking/api_constants.dart';
import 'package:connect_chain/core/networking/api_helper.dart';
import 'package:connect_chain/core/networking/api_request_model.dart';
import 'package:connect_chain/features/reset_password/data/models/reset_password_request_model.dart';

class ResetPasswordDataSource {
  final ApiHelper _apiHelper;
  const ResetPasswordDataSource(this._apiHelper);

  Future<void> forgetPassword(String email) async {
    await _apiHelper.post(
      ApiRequestModel(
        endPoint: ApiConstants.forgetPasswordEP,
        queries: {
          "email": email,
        },
      ),
    );
  }

  Future<void> verifyOtp(String email, String otp) async {
    await _apiHelper.post(ApiRequestModel(
      endPoint: ApiConstants.otpVerificationEP,
      body: {
        "email": email,
        "otp": otp,
      },
    ));
  }

  Future<void> resetPassword(
      ResetPasswordRequestModel resetPasswordRequestModel) async {
    await _apiHelper.put(
      ApiRequestModel(
        endPoint: ApiConstants.resetPasswordEP,
        body: resetPasswordRequestModel.toJson(),
      ),
    );
  }
}

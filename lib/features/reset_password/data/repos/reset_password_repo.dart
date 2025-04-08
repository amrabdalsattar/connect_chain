import 'package:connect_chain/core/networking/api_error_handler/api_error_handler.dart';
import 'package:connect_chain/core/networking/api_result.dart';
import 'package:connect_chain/features/reset_password/data/datasources/reset_password_data_source.dart';
import 'package:connect_chain/features/reset_password/data/models/reset_password_request_model.dart';

class ResetPasswordRepo {
  final ResetPasswordDataSource _dataSource;
  const ResetPasswordRepo(this._dataSource);

  Future<ApiResult<String>> forgetPassword(String email) async {
    try {
      await _dataSource.forgetPassword(email);
      return const ApiResult.success('Password reset link sent to your email');
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<String>> verifyOtp(String email, String otp) async {
    try {
      await _dataSource.verifyOtp(email, otp);
      return const ApiResult.success('OTP verified successfully');
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<String>> resetPassword(
      ResetPasswordRequestModel resetPasswordRequestModel) async {
    try {
      await _dataSource.resetPassword(resetPasswordRequestModel);
      return const ApiResult.success('Password reset successfully');
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

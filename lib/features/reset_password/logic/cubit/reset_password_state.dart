import 'package:connect_chain/core/networking/api_error_handler/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_state.freezed.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = _ForgotPasswordInitialState;

  // Forget password states
  const factory ResetPasswordState.forgetPasswordLoading() =
      ForgetPasswordLoadingState;
  const factory ResetPasswordState.forgetPasswordSuccess(String message) =
      ForgetPasswordSuccessState;
  const factory ResetPasswordState.forgetPasswordError(
      ApiErrorModel apiErrorModel) = ForgetPasswordErrorState;

  // Otp verification states
  const factory ResetPasswordState.otpVerificationLoading() =
      OtpVerificationLoadingState;
  const factory ResetPasswordState.otpVerificationSuccess(String message) =
      OtpVerificationSuccessState;
  const factory ResetPasswordState.otpVerificationError(
      ApiErrorModel apiErrorModel) = OtpVerificationErrorState;

  // Reset password states
  const factory ResetPasswordState.resetPasswordLoading() =
      ResetPasswordLoadingState;
  const factory ResetPasswordState.resetPasswordSuccess(String message) =
      ResetPasswordSuccessState;
  const factory ResetPasswordState.resetPasswordError(
      ApiErrorModel apiErrorModel) = ResetPasswordErrorState;
}

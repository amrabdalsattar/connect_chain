import 'package:connect_chain/core/networking/api_error_handler/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_state.freezed.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = _ForgotPasswordInitialState;

  // Forget password states
  const factory ResetPasswordState.forgetPasswordLoading() =
      _ForgetPasswordLoadingState;
  const factory ResetPasswordState.forgetPasswordSuccess(String message) =
      _ForgotPasswordSuccessState;
  const factory ResetPasswordState.forgetPasswordError(
      ApiErrorModel apiErrorModel) = _ForgotPasswordErrorState;

  // Otp verification states
  const factory ResetPasswordState.otpVerificationLoading() =
      _OtpVerificationLoadingState;
  const factory ResetPasswordState.otpVerificationSuccess(String message) =
      _OtpVerificationSuccessState;
  const factory ResetPasswordState.otpVerificationError(
      ApiErrorModel apiErrorModel) = _OtpVerificationErrorState;

  // Reset password states
  const factory ResetPasswordState.resetPasswordLoading() =
      _ResetPasswordLoadingState;
  const factory ResetPasswordState.resetPasswordSuccess(String message) =
      _ResetPasswordSuccessState;
  const factory ResetPasswordState.resetPasswordError(
      ApiErrorModel apiErrorModel) = _ResetPasswordErrorState;
}

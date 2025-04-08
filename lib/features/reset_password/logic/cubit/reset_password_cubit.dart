import 'package:connect_chain/features/reset_password/data/models/reset_password_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/reset_password_repo.dart';
import 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final ResetPasswordRepo _repo;
  ResetPasswordCubit(this._repo) : super(const ResetPasswordState.initial());
  final forgetPasswordFormKey = GlobalKey<FormState>();
  final otpVerificationFormKey = GlobalKey<FormState>();
  final resetPasswordFormKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final newPasswordController = TextEditingController();
  final newPasswordConfirmationController = TextEditingController();

  void emitForgetPasswordStates() async {
    if (forgetPasswordFormKey.currentState!.validate()) {
      emit(const ResetPasswordState.forgetPasswordLoading());
      final result = await _repo.forgetPassword(emailController.text);
      result.when(
          success: (message) =>
              emit(ResetPasswordState.forgetPasswordSuccess(message)),
          failure: (apiErrorModel) =>
              emit(ResetPasswordState.forgetPasswordError(apiErrorModel)));
    }
  }

  void emitOtpVerificationStates(String otp) async {
    if (otpVerificationFormKey.currentState!.validate()) {
      emit(const ResetPasswordState.otpVerificationLoading());
      final result =
          await _repo.verifyOtp(email: emailController.text, otp: otp);
      result.when(
        success: (message) =>
            emit(ResetPasswordState.otpVerificationSuccess(message)),
        failure: (apiErrorModel) =>
            emit(ResetPasswordState.otpVerificationError(apiErrorModel)),
      );
    }
  }

  void emitResetPasswordStates() async {
    if (resetPasswordFormKey.currentState!.validate()) {
      emit(const ResetPasswordState.resetPasswordLoading());
      final result = await _repo.resetPassword(
        ResetPasswordRequestModel(
            email: emailController.text,
            password: newPasswordController.text,
            confirmPassword: newPasswordConfirmationController.text),
      );
      result.when(
        success: (message) =>
            emit(ResetPasswordState.resetPasswordSuccess(message)),
        failure: (apiErrorModel) =>
            emit(ResetPasswordState.resetPasswordError(apiErrorModel)),
      );
    }
  }
}

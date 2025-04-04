import 'package:connect_chain/features/login/data/repos/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/token_helper.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    if (formKey.currentState!.validate()) {
      emit(const LoginState.loading());
      final result = await _loginRepo.login(
        email: emailController.text,
        password: passwordController.text,
      );

      result.when(
        success: (loginResponseModel) async {
          await TokenHelper.setSecuredUserToken(
              loginResponseModel.userData?.token ?? '');

          emit(LoginState.success(loginResponseModel));
        },
        failure: (error) => emit(LoginState.error(error)),
      );
    }
  }
}

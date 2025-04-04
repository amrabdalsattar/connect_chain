import 'package:connect_chain/core/helpers/dialogs_helper.dart';
import 'package:connect_chain/core/helpers/extensions.dart';
import 'package:connect_chain/core/routing/routes.dart';
import 'package:connect_chain/core/widgets/custom_button.dart';
import 'package:connect_chain/features/login/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/login_cubit.dart';

class LoginButtonBlocConsumer extends StatelessWidget {
  const LoginButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      bloc: context.read<LoginCubit>(),
      listenWhen: (previous, current) =>
          current is LoginErrorState ||
          current is LoginSuccessState ||
          current is LoginLoadingState,
      listener: (context, state) {
        state.whenOrNull(
          error: (apiErrorModel) =>
              DialogsHelper.showErrorDialog(context, apiErrorModel.message!),
          success: (loginResponseModel) =>
              context.pushReplacementNamed(Routes.homeRoute),
        );
      },
      builder: (context, state) => CustomButton(
        title: 'تسجيل الدخول',
        width: double.infinity,
        isLoading: state is LoginLoadingState,
        onTap: () {
          context.read<LoginCubit>().emitLoginStates();
        },
      ),
    );
  }
}

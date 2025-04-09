import 'package:connect_chain/core/helpers/dialogs_helper.dart';
import 'package:connect_chain/core/helpers/extensions.dart';
import 'package:connect_chain/core/routing/routes.dart';
import 'package:connect_chain/features/reset_password/logic/cubit/reset_password_cubit.dart';
import 'package:connect_chain/features/reset_password/logic/cubit/reset_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_button.dart';

class OtpButtonBlocConsumer extends StatelessWidget {
  const OtpButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
      listenWhen: (previous, current) =>
          current is OtpVerificationLoadingState ||
          current is OtpVerificationSuccessState ||
          current is OtpVerificationErrorState,
      listener: (context, state) {
        state.whenOrNull(
          otpVerificationError: (apiErrorModel) =>
              DialogsHelper.showErrorDialog(
                  context, apiErrorModel.getErrorMessages()!),
          otpVerificationSuccess: (message) {
            DialogsHelper.showSnackBar(context, message);
            context.pushNamed(
              Routes.resetPasswordScreenRoute,
              arguments: context.read<ResetPasswordCubit>(),
            );
          },
        );
      },
      builder: (context, state) => CustomButton(
        title: 'تحقق',
        width: double.infinity,
        isLoading: state is OtpVerificationLoadingState,
        onTap: () {
          context.read<ResetPasswordCubit>().emitOtpVerificationStates();
        },
      ),
    );
  }
}

import 'package:connect_chain/features/reset_password/logic/cubit/reset_password_cubit.dart';
import 'package:connect_chain/features/reset_password/logic/cubit/reset_password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';

part 'resend_otp_counter.dart';
part 'resend_otp_button.dart';

class ResendOtpRow extends StatelessWidget {
  const ResendOtpRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
      buildWhen: (previous, current) => current is OtpTimerRunningState,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ResendOtpCounter(),
            MaterialButton(
              onPressed: context.read<ResetPasswordCubit>().canResendOtp
                  ? () {
                      context.read<ResetPasswordCubit>().emitResendOtpState();
                    }
                  : null,
              child: Text(
                'اعادة الإرسال',
                style: AppTextStyles.cairoSemiOpacityBlackRegular16
                    .copyWith(fontWeight: FontWeightHelper.medium),
              ),
            )
          ],
        );
      },
    );
  }
}

import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/spacing.dart';

import 'package:connect_chain/core/widgets/screen_label.dart';
import 'package:connect_chain/features/reset_password/logic/cubit/reset_password_cubit.dart';
import 'package:connect_chain/features/reset_password/ui/otp_verification_ui/widgets/otp_button_bloc_consumer.dart';
import 'package:connect_chain/features/reset_password/ui/otp_verification_ui/widgets/otp_form.dart';
import 'package:connect_chain/features/reset_password/ui/otp_verification_ui/widgets/resend_otp_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ResetPasswordCubit resetPasswordCubit =
        ModalRoute.of(context)!.settings.arguments as ResetPasswordCubit;
    return BlocProvider.value(
      value: resetPasswordCubit,
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(left: 28.w, right: 28.w, top: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(27),
                Image.asset(AppImages.otpImage),
                const ScreenLabel(
                    title: 'إدخال رمز التحقق',
                    subTitle:
                        'أدخل رمز التحقق الذى أرسلناه للتو إلي عنوان بريدك الإلكترونى'),
                verticalSpace(24),
                const OtpForm(),
                verticalSpace(14),
                const ResendOtpRow(),
                verticalSpace(32),
                const OtpButtonBlocConsumer()
              ],
            ),
          ),
        )),
      ),
    );
  }
}

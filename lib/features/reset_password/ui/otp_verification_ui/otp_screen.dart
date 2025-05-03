import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/screen_label.dart';
import 'widgets/otp_button_bloc_consumer.dart';
import 'widgets/otp_form.dart';
import 'widgets/resend_otp_row.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 28.w, right: 28.w, top: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpace(height: 27),
              Image.asset(AppImages.otpImage),
              const ScreenLabel(
                  title: 'إدخال رمز التحقق',
                  subTitle:
                      'أدخل رمز التحقق الذى أرسلناه للتو إلي عنوان بريدك الإلكترونى'),
              const VerticalSpace(height: 24),
              const OtpForm(),
              const VerticalSpace(height: 14),
              const ResendOtpRow(),
              const VerticalSpace(height: 32),
              const OtpButtonBlocConsumer()
            ],
          ),
        ),
      )),
    );
  }
}

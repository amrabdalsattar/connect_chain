import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/widgets/screen_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/otp_form.dart';

class OtpVerificationScreen extends StatelessWidget {
  final String email;
  const OtpVerificationScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 50.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(30),
              Image.asset(AppImages.otpVerification),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ScreenLabel(
                      title: 'إدخال رمز التحقق',
                      subTitle:
                          'أدخل رمز التحقق الذى أرسلناه للتو إلي عنوان بريدك الإلكترونى',
                    ),
                    verticalSpace(24),
                    const OtpForm()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

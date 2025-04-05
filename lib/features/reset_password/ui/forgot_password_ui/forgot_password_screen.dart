import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/widgets/custom_button.dart';
import 'package:connect_chain/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/screen_label.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImages.forgotPassword),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ScreenLabel(
                    title: 'نسيت كلمة السر؟',
                    subTitle:
                        'لا تقلق! فقط ادخل عنوان بريدك الإلكتروني أدناه وسنرسل لك رمز التحقق لإعادة تعيين كلمة المرور',
                  ),
                  verticalSpace(60),
                  CustomTextFormField(
                    hintText: 'ادخل بريدك الإلكتروني',
                    controller: TextEditingController(),
                    validator: (v) {},
                    prefixIconPath: AppImages.emailIcon,
                  ),
                  verticalSpace(32),
                  const CustomButton(
                    title: 'إرسال الرمز',
                    width: double.infinity,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

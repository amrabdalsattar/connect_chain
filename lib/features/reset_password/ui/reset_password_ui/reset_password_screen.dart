import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/app_regex.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/widgets/custom_button.dart';
import 'package:connect_chain/core/widgets/custom_text_form_field.dart';
import 'package:connect_chain/core/widgets/logo.dart';
import 'package:connect_chain/core/widgets/screen_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'widgets/reset_password_form.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
              verticalSpace(27),
              Logo(width: 51.w, height: 61.h),
              verticalSpace(16),
              const ScreenLabel(
                  title: 'إنشاء كلمة مرور جديدة',
                  subTitle:
                      'قم بإدخال كلمة مرور جديدة لحسابك . تأكد من أن كلمة المرور قوية وسهلة التذكر'),
              verticalSpace(33),
              const ResetPasswordForm(),
              verticalSpace(40),
              CustomButton(title: 'حفظ كلمة المرور', width: 326.w)
            ],
          ),
        ),
      )),
    );
  }
}

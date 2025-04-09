import 'package:connect_chain/core/helpers/constant_string.dart';
import 'package:connect_chain/features/reset_password/logic/cubit/reset_password_cubit.dart';
import 'package:connect_chain/features/reset_password/ui/forgot_password_ui/widgets/forget_password_button_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/screen_label.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
                Image.asset(AppImages.forgetPassword),
                const ScreenLabel(
                  title: ConstantString.forgetPassword,
                  subTitle:
                      'لا تقلق! فقط ادخل عنوان بريدك الإلكتروني أدناه وسنرسل لك رمز التحقق لإعادة تعيين كلمة المرور',
                ),
                verticalSpace(24),
                Text(ConstantString.email,
                    style: AppTextStyles.cairoDarkGrayBold16),
                verticalSpace(8),
                Form(
                  key: context.read<ResetPasswordCubit>().forgetPasswordFormKey,
                  child: CustomTextFormField(
                      hintText: ConstantString.email,
                      controller:
                          context.read<ResetPasswordCubit>().emailController,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !AppRegex.isEmailValid(value)) {
                          return 'من فضلك ادخل البريد الإلكتروني صحيح';
                        }
                      },
                      prefixIconPath: AppImages.emailIcon),
                ),
                verticalSpace(32),
                const ForgetPasswordButtonBlocConsumer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

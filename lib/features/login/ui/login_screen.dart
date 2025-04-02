import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/widgets/actionable_text_row.dart';
import 'package:connect_chain/core/widgets/custom_button.dart';
import 'package:connect_chain/core/widgets/screen_label.dart';
import 'package:connect_chain/core/widgets/social_media_registration_widgets.dart';
import 'package:connect_chain/features/login/ui/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/logo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 32.w, right: 32.w, top: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                horizontalSpace(double.infinity),
                const Logo(
                  height: 61,
                  width: 51,
                ),
                const ScreenLabel(
                  title: 'قم بتسجيل الدخول الي حسابك',
                  subTitle: 'ادخل لحسابك وابدأ رحلتك معنا !',
                ),
                verticalSpace(48),
                LoginForm(
                    formKey: formKey,
                    emailController: emailController,
                    passwordController: passwordController),
                Align(
                  alignment: const AlignmentDirectional(1, 1),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "نسيت كلمة السر؟",
                      style: AppTextStyles.tajawalPrimaryMedium15,
                    ),
                  ),
                ),
                verticalSpace(40),
                const CustomButton(
                    title: 'تسجيل الدخول', width: double.infinity),
                verticalSpace(24),
                const SocialMediaRegistrationWidgets(),
                verticalSpace(24),
                const Align(
                  alignment: Alignment.center,
                  child: ActionableTextRow(
                      text: 'ليس لديك حساب؟', actionText: 'سجل الآن'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

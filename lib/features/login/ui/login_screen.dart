import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/extensions.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/widgets/actionable_text_row.dart';
import '../../../core/widgets/logo.dart';
import '../../../core/widgets/screen_label.dart';
import '../../../core/widgets/social_media_registration_widgets.dart';
import 'widgets/forgot_password_text_button.dart';
import 'widgets/login_button_bloc_consumer.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const HorizontalSpace(width: double.infinity),
                const Logo(
                  height: 61,
                  width: 51,
                ),
                const ScreenLabel(
                  title: 'قم بتسجيل الدخول الي حسابك',
                  subTitle: 'ادخل لحسابك وابدأ رحلتك معنا !',
                ),
                const VerticalSpace(height: 48),
                const LoginForm(),
                ForgotPasswordTextButton(
                  onPressed: () => context.pushNamed(
                    Routes.forgetPasswordScreenRoute,
                  ),
                ),
                const VerticalSpace(height: 40),
                const LoginButtonBlocConsumer(),
                const VerticalSpace(height: 24),
                const SocialMediaRegistrationWidgets(),
                const VerticalSpace(height: 24),
                ActionableTextRow(
                  onTap: () {
                    context.pushNamed(Routes.signUpRoute);
                  },
                  text: 'ليس لديك حساب؟',
                  actionText: 'سجل الآن',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/extensions.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/actionable_text_row.dart';
import '../../../core/widgets/logo.dart';
import '../../../core/widgets/screen_label.dart';
import '../../../core/widgets/social_media_registration_widgets.dart';
import 'widgets/signup_button_bloc_consumer.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(left: 32.w, right: 32.w, top: 30.h, bottom: 24.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HorizontalSpace(width: double.infinity),
                const Logo(
                  height: 61,
                  width: 51,
                ),
                const ScreenLabel(
                  title: 'قم بانشاء حساب جديد',
                  subTitle: 'سجّل حسابك وابدأ إدارة طلباتك بكل سهولة  !',
                ),
                const VerticalSpace(height: 48),
                const SignupForm(),
                const VerticalSpace(height: 40),
                const SignupButtonBlocConsumer(),
                const VerticalSpace(height: 24),
                const SocialMediaRegistrationWidgets(),
                const VerticalSpace(height: 24),
                ActionableTextRow(
                    onTap: () {
                      context.pop();
                    },
                    text: ' لديك حساب ؟ ',
                    actionText: 'تسجيل الدخول')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

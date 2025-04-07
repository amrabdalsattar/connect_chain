import 'package:connect_chain/core/helpers/extensions.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/routing/routes.dart';
import 'package:connect_chain/core/widgets/actionable_text_row.dart';
import 'package:connect_chain/core/widgets/custom_button.dart';
import 'package:connect_chain/core/widgets/logo.dart';
import 'package:connect_chain/core/widgets/screen_label.dart';
import 'package:connect_chain/core/widgets/social_media_registration_widgets.dart';
import 'package:connect_chain/features/signup/ui/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePassword = TextEditingController();
  TextEditingController fullName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
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
                  title: 'قم بانشاء حساب جديد',
                  subTitle: 'سجّل حسابك وابدأ إدارة طلباتك بكل سهولة  !',
                ),
                verticalSpace(48),
                SignupForm(
                    formKey: formKey,
                    emailController: emailController,
                    passwordController: passwordController,
                    fullName: fullName,
                    phoneNumber: phoneNumber,
                    rePassword: rePassword),
                verticalSpace(40),
                const CustomButton(
                    title: 'تسجيل الدخول', width: double.infinity),
                verticalSpace(24),
                const SocialMediaRegistrationWidgets(),
                verticalSpace(24),
                Align(
                  alignment: Alignment.center,
                  child: ActionableTextRow(
                      onTap: () {
                        context.pushNamedAndRemoveUntil(Routes.loginRoute,
                            predicate: (Route<dynamic> route) => (false));
                      },
                      text: ' لديك حساب ؟ ',
                      actionText: 'تسجيل الدخول'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

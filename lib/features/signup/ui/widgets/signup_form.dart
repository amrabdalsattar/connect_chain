import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController rePassword = TextEditingController();

  TextEditingController fullName = TextEditingController();

  TextEditingController phoneNumber = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isPassObscure = true;
  bool isRePassObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CustomTextFormField(
            hintText: 'الاسم بالكامل',
            controller: fullName,
            validator: (p0) {},
            prefixIconPath: AppImages.personIcon),
        verticalSpace(24),
        CustomTextFormField(
            hintText: 'البريد الاليكتروني',
            controller: emailController,
            validator: (p0) {},
            prefixIconPath: AppImages.emailIcon),
        verticalSpace(24),
        CustomTextFormField(
          hintText: 'كلمة السر',
          controller: passwordController,
          validator: (p0) {},
          prefixIconPath: AppImages.lockIcon,
          suffixIcon: InkWell(
            overlayColor:
                const WidgetStatePropertyAll(ColorsHelper.transparent),
            onTap: () {
              setState(() {
                isPassObscure = !isPassObscure;
              });
            },
            child: isPassObscure
                ? const Icon(
                    Icons.visibility_off,
                    color: ColorsHelper.darkBlue,
                  )
                : const Icon(Icons.visibility, color: ColorsHelper.darkBlue),
          ),
        ),
        verticalSpace(24),
        CustomTextFormField(
          hintText: 'تأكيد كلمة السر',
          controller: rePassword,
          validator: (p0) {},
          prefixIconPath: AppImages.lockIcon,
          suffixIcon: InkWell(
            overlayColor:
                const WidgetStatePropertyAll(ColorsHelper.transparent),
            onTap: () {
              setState(() {
                isRePassObscure = !isRePassObscure;
              });
            },
            child: isRePassObscure
                ? const Icon(
                    Icons.visibility_off,
                    color: ColorsHelper.darkBlue,
                  )
                : const Icon(Icons.visibility, color: ColorsHelper.darkBlue),
          ),
        ),
      ],
    ));
  }
}

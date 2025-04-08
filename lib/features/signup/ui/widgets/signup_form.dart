import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class SignupForm extends StatefulWidget {
  final GlobalKey formKey;
  final TextEditingController emailController;
  final TextEditingController fullName;
  final TextEditingController phoneNumber;
  final TextEditingController passwordController;
  final TextEditingController rePassword;

  const SignupForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.fullName,
    required this.phoneNumber,
    required this.rePassword,
  });

  @override
  State<SignupForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignupForm> {
  bool isPassObscure = true;
  bool isRepassObscure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'الاسم بالكامل',
            controller: widget.fullName,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.hasNumber(value)) {
                return 'لا يمكن ان يحتوي علي رموز او ارقام';
              }
            },
            prefixIconPath: AppImages.personIcon,
            keyboardType: TextInputType.emailAddress,
          ),
          verticalSpace(24),
          CustomTextFormField(
            hintText: 'البريد الالكتروني',
            controller: widget.emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'من فضلك ادخل بريد الكتروني صحيح';
              }
            },
            prefixIconPath: AppImages.emailIcon,
            keyboardType: TextInputType.emailAddress,
          ),
          verticalSpace(24),
          CustomTextFormField(
            controller: widget.passwordController,
            hintText: 'كلمة السر',
            prefixIconPath: AppImages.lockIcon,
            isObscure: isPassObscure,
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
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 8) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpace(24),
          CustomTextFormField(
            controller: widget.rePassword,
            hintText: ' تاكيد كلمة السر',
            prefixIconPath: AppImages.lockIcon,
            isObscure: isRepassObscure,
            suffixIcon: InkWell(
              overlayColor:
                  const WidgetStatePropertyAll(ColorsHelper.transparent),
              onTap: () {
                setState(() {
                  isRepassObscure = !isRepassObscure;
                });
              },
              child: isRepassObscure
                  ? const Icon(
                      Icons.visibility_off,
                      color: ColorsHelper.darkBlue,
                    )
                  : const Icon(Icons.visibility, color: ColorsHelper.darkBlue),
            ),
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 8) {
                return 'Please enter a valid password';
              }
              if (value != widget.passwordController.text) {
                return 'Passwords do not match';
              }
            },
          ),
        ],
      ),
    );
  }
}

import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/constant_string.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/features/signup/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignupForm> {
  bool isPassObscure = true;
  bool isRepassObscure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'الاسم الأول',
            controller: context.read<SignupCubit>().firstNameController,
            validator: (value) {
              if (value == null || value.isEmpty || AppRegex.hasNumber(value)) {
                return 'لا يمكن ان يحتوي علي رموز او ارقام';
              }
            },
            prefixIconPath: AppImages.personIcon,
            keyboardType: TextInputType.name,
          ),
          verticalSpace(24),
          CustomTextFormField(
            hintText: 'الاسم الأخير',
            controller: context.read<SignupCubit>().lastNameController,
            validator: (value) {
              if (value == null || value.isEmpty || AppRegex.hasNumber(value)) {
                return 'لا يمكن ان يحتوي علي رموز او ارقام';
              }
            },
            prefixIconPath: AppImages.personIcon,
            keyboardType: TextInputType.name,
          ),
          verticalSpace(24),
          CustomTextFormField(
            hintText: ConstantString.email,
            controller: context.read<SignupCubit>().emailController,
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
            hintText: 'رقم الهاتف',
            controller: context.read<SignupCubit>().phoneNumberController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'من فضلك ادخل رقم هاتف صحيح';
              }
            },
            prefixIconPath: AppImages.phoneIcon,
            keyboardType: TextInputType.phone,
          ),
          verticalSpace(24),
          CustomTextFormField(
            hintText: 'العنوان',
            controller: context.read<SignupCubit>().addressController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'هذه الخانة مطلوبة';
              }
            },
            prefixIconPath: AppImages.addressIcon,
          ),
          verticalSpace(24),
          CustomTextFormField(
            controller: context.read<SignupCubit>().passwordController,
            hintText: ConstantString.password,
            prefixIconPath: AppImages.lockIcon,
            isObscure: isPassObscure,
            suffixIcon: GestureDetector(
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
                return 'يرجى إدخال كلمة مرور صالحة';
              }
            },
          ),
          verticalSpace(24),
          CustomTextFormField(
            controller: context.read<SignupCubit>().confirmPasswordController,
            hintText: ConstantString.confirmPassword,
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
              if (value == null || value.isEmpty) {
                return 'يرجى تأكيد كلمة المرور';
              }
              if (value !=
                  context.read<SignupCubit>().passwordController.text) {
                return 'كلمات المرور غير متوافقة، حاول مرة أخرى.';
              }
            },
          ),
        ],
      ),
    );
  }
}

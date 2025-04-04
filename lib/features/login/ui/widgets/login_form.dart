import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/features/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'البريد الالكتروني',
            controller: context.read<LoginCubit>().emailController,
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
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'كلمة السر',
            prefixIconPath: AppImages.lockIcon,
            isObscure: isObscureText,
            suffixIcon: InkWell(
              overlayColor:
                  const WidgetStatePropertyAll(ColorsHelper.transparent),
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: isObscureText
                  ? const Icon(
                      Icons.visibility_off,
                      color: ColorsHelper.darkBlue,
                    )
                  : const Icon(Icons.visibility, color: ColorsHelper.darkBlue),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'من فضلك ادخل كلمة السر';
              }
            },
          ),
        ],
      ),
    );
  }
}

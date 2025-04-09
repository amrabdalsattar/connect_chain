import '../../../logic/cubit/reset_password_cubit.dart';
import 'otp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<ResetPasswordCubit>().otpVerificationFormKey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          textDirection: TextDirection.rtl,
          children: List.generate(
            4,
            (index) {
              return GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(focusNodes[index]);
                },
                child: OtpTextField(
                    onChanged: (value) {
                      if (value.length == 1 && index > 0) {
                        FocusScope.of(context)
                            .requestFocus(focusNodes[index - 1]);
                      }
                      // Move focus
                      else if (value.isEmpty && index < focusNodes.length - 1) {
                        FocusScope.of(context)
                            .requestFocus(focusNodes[index + 1]);
                      }
                    },
                    textEditingController: context
                        .read<ResetPasswordCubit>()
                        .otpControllers[index],
                    focusNode: focusNodes[index]),
              );
            },
          ),
        ));
  }
}

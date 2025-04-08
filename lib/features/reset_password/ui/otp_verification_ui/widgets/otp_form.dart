import 'package:connect_chain/features/reset_password/ui/otp_verification_ui/widgets/otp_text_field.dart';
import 'package:flutter/material.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late List<FocusNode> focusNodes = List.generate(5, (_) => FocusNode());
  late List<TextEditingController> controllers =
      List.generate(5, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        5,
        (index) {
          return OtpTextField(
              onChanged: (value) {
                if (value.length == 1 && index > 0) {
                  FocusScope.of(context).requestFocus(focusNodes[index - 1]);
                }
                // Move focus
                else if (value.isEmpty && index < focusNodes.length - 1) {
                  FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                }
              },
              textEditingController: controllers[index],
              focusNode: focusNodes[index]);
        },
      ),
    ));
  }
}

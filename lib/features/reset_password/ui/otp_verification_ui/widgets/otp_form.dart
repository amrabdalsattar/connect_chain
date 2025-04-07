import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    super.key,
  });

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  // List of FocusNodes, one for each OTP digit.
  late List<FocusNode> focusNodes;
  // List of controllers for each text field.
  late List<TextEditingController> textControllers;
  final GlobalKey<FormState> formState = GlobalKey();
  bool isAllFilled = false;
  String currentOTP = '';

  @override
  void initState() {
    super.initState();
    int otpLength = 4;
    focusNodes = List.generate(otpLength, (_) => FocusNode());
    textControllers = List.generate(otpLength, (_) => TextEditingController());
  }

  @override
  void dispose() {
    for (var controller in textControllers) {
      controller.dispose();
    }
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formState,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(textControllers.length, (index) {
          return SizedBox(
            width: 48.w,
            height: 44.h,
            child: TextFormField(
              controller: textControllers[index],
              focusNode: focusNodes[index],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: AppTextStyles.cairoBlackMedium16,
              inputFormatters: [LengthLimitingTextInputFormatter(1)],
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 14.h, bottom: 14.h),
                focusColor: ColorsHelper.primaryColor,
                hintText: '-',
                fillColor: ColorsHelper.offWhite,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: ColorsHelper.primaryColor,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: ColorsHelper.semiGray,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              onChanged: (value) {
                // Move focus Forward
                if (value.length == 1 && index < focusNodes.length - 1) {
                  FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                }
                // Move focus
                else if (value.isEmpty && index > 0) {
                  FocusScope.of(context).requestFocus(focusNodes[index - 1]);
                }

                //  AUTOMATIC CHECK FOR OTP
                currentOTP = '';
                for (int i = 0; i < 4; i++) {
                  if (textControllers[i].text.isNotEmpty) {
                    currentOTP += textControllers[i].text;

                    isAllFilled = true;
                  } else {
                    isAllFilled = false;
                    break;
                  }
                }
                if (isAllFilled) {
                  print("current otp = $currentOTP");
                }
              },
            ),
          );
        }),
      ),
    );
  }
}

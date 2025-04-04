import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_styles.dart';

class ForgotPasswordTextButton extends StatelessWidget {
  const ForgotPasswordTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(1, 1),
      child: TextButton(
        onPressed: () {},
        child: Text(
          "نسيت كلمة السر؟",
          style: AppTextStyles.tajawalPrimaryMedium15,
        ),
      ),
    );
  }
}

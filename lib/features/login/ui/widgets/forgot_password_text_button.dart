import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_styles.dart';

class ForgotPasswordTextButton extends StatelessWidget {
  final void Function()? onPressed;
  const ForgotPasswordTextButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(1, 1),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          "نسيت كلمة السر؟",
          style: AppTextStyles.tajawalPrimaryMedium15,
        ),
      ),
    );
  }
}

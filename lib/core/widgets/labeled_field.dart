import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/spacing.dart';
import '../theming/app_text_styles.dart';
import 'custom_alert_button.dart';

class LabeledField extends StatelessWidget {
  final String label;
  final Widget field;
  final String? alertMessage;

  const LabeledField({
    super.key,
    required this.label,
    required this.field,
    this.alertMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style:
                  AppTextStyles.cairoBlackSemiBold16.copyWith(fontSize: 14.sp),
            ),
            alertMessage != null
                ? CustomAlertButton(message: alertMessage!)
                : const SizedBox(),
          ],
        ),
        const VerticalSpace(height: 8),
        field,
      ],
    );
  }
}

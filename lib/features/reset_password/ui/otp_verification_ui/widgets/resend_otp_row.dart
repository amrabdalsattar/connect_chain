import 'dart:async';

import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';

part 'resned_otp_button.dart';

class ResendOtpRow extends StatelessWidget {
  const ResendOtpRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ResendOtpButton(),
        TextButton(
          onPressed: () {},
          child: Text(
            'اعادة الإرسال',
            style: AppTextStyles.cairoSemiOpacityBlackRegular16
                .copyWith(fontWeight: FontWeightHelper.medium),
          ),
        )
      ],
    );
  }
}

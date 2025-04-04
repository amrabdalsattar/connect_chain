import '../helpers/spacing.dart';
import '../theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class ScreenLabel extends StatelessWidget {
  final String title;
  final String subTitle;
  const ScreenLabel({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.cairoDarkGrayBold22,
        ),
        verticalSpace(8),
        Text(
          subTitle,
          style: AppTextStyles.cairoSemiOpacityBlackRegular14,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../../core/theming/app_text_styles.dart';

class SoldQuantityTextSpan extends StatelessWidget {
  final int soldQuantity;
  const SoldQuantityTextSpan({super.key, required this.soldQuantity});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textDirection: TextDirection.ltr,
      TextSpan(
        children: [
          TextSpan(
            text: '$soldQuantity',
            style: AppTextStyles.cairoBlackSemiBold16,
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.ideographic,
            child: Text(
              'pcs',
              style: AppTextStyles.cairoLiteBlueSemiBold12,
            ),
          ),
        ],
      ),
    );
  }
}

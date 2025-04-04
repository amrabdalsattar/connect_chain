import '../theming/colors_helper.dart';
import 'package:flutter/material.dart';

import '../theming/app_text_styles.dart';
import '../widgets/loading_indicator.dart';
import 'extensions.dart';

class DialogsHelper {
  static void showLoading(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const LoadingIndicator(
        color: ColorsHelper.white,
      ),
    );
  }

  static void showErrorDialog(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: ColorsHelper.red,
          size: 32,
        ),
        content: Text(
          error,
          style: AppTextStyles.cairoPrimaryBold16,
        ),
        actions: [
          TextButton(
            child: Text(
              'حسنًا',
              style: AppTextStyles.cairoPrimaryBold16,
            ),
            onPressed: () {
              context.pop();
            },
          )
        ],
      ),
    );
  }
}

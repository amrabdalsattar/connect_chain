import 'package:flutter/material.dart';

import '../theming/app_text_styles.dart';
import '../theming/colors_helper.dart';
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

  static void showSnackBar(BuildContext context, String message,
      {Color? backgroundColor}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        content: Text(message),
        backgroundColor: backgroundColor ?? ColorsHelper.green,
        behavior: SnackBarBehavior.fixed,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}

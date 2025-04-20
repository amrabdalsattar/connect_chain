import 'spacing.dart';
import '../widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

  static void showMessageBottomSheet({
    required BuildContext context,
    required String message,
    VoidCallback? onClose,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: ColorsHelper.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: false,
      builder: (context) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                message,
                style: AppTextStyles.cairoBlackBold16
                    .copyWith(fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              verticalSpace(12),
              CustomButton(
                title: 'إغلاق',
                width: 324.w,
                onTap: () {
                  context.pop();
                },
              )
            ],
          ),
        );
      },
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

  static void showConfirmationDialog({
    required BuildContext context,
    required String message,
    required VoidCallback onContinue,
    required VoidCallback onCancel,
  }) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(
          message,
          style: AppTextStyles.cairoPrimaryBold16,
        ),
        actions: [
          TextButton(
            child: Text(
              'إلغاء',
              style: AppTextStyles.cairoPrimaryBold16.copyWith(
                color: ColorsHelper.red,
              ),
            ),
            onPressed: () {
              onCancel();
              context.pop();
            },
          ),
          TextButton(
            child: Text(
              'متابعة',
              style: AppTextStyles.cairoPrimaryBold16.copyWith(
                color: ColorsHelper.green,
              ),
            ),
            onPressed: () {
              onContinue();
              context.pop();
            },
          ),
        ],
      ),
    );
  }
}

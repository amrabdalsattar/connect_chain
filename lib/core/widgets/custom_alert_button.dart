import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/dialogs_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAlertButton extends StatelessWidget {
  const CustomAlertButton({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        DialogsHelper.showMessageBottomSheet(
            context: context, message: message);
      },
      child: Image.asset(
        AppImages.infoIcon,
        width: 16.w,
        height: 16.h,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}

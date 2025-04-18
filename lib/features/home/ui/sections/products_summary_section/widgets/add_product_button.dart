import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/extensions.dart';
import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/theming/app_text_styles.dart';
import '../../../../../../core/theming/colors_helper.dart';

class AddProductButton extends StatelessWidget {
  const AddProductButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.addProductScreenRoute);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 8.w),
        decoration: BoxDecoration(
            color: ColorsHelper.primaryColor,
            borderRadius: BorderRadius.circular(12)),
        child: Text(
          'اضافه منتج',
          style: AppTextStyles.cairoWhiteBold12,
        ),
      ),
    );
  }
}

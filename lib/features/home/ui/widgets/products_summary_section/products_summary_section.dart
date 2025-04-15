import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/theming/colors_helper.dart';
import 'widgets/add_product_button.dart';
import 'widgets/products_summary_data.dart';

class ProductsSummarySection extends StatelessWidget {
  const ProductsSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
      decoration: BoxDecoration(
        color: ColorsHelper.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'منتجاتك',
                style: AppTextStyles.cairoBlackBold16,
              ),
              const AddProductButton()
            ],
          ),
          verticalSpace(24),
          const ProductsSummaryData()
        ],
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/core/utils/format_utils.dart';
import 'package:connect_chain/core/widgets/custom_icon_button.dart';
import 'package:connect_chain/core/widgets/loading_indicator.dart';
import 'package:connect_chain/features/manage_products/data/models/manage_supplier_products_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'custom_edit_product_tile_trailing_section.dart';
part 'edit_product_tile_details_section.dart';

class CustomEditProductTile extends StatelessWidget {
  const CustomEditProductTile(
      {super.key,
      required this.productDataModel,
      this.onEdit,
      this.onDelete,
      this.onTap});

  final ProductDataModel productDataModel;
  final void Function()? onEdit;
  final void Function()? onDelete;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 80.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorsHelper.white,
          boxShadow: [
            BoxShadow(
              color: ColorsHelper.black.withValues(alpha: 0.1),
              offset: const Offset(0, 2),
              blurRadius: 4,
            ),
          ],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1.w,
            color: ColorsHelper.liteGray,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 9.h),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: CachedNetworkImage(
                  imageUrl: productDataModel.image!,
                  placeholder: (_, __) => Padding(
                      padding: EdgeInsets.all(16.r),
                      child: const LoadingIndicator(
                          color: ColorsHelper.primaryColor)),
                  errorWidget: (_, __, ___) => Container(),
                  height: 56.h,
                  width: 56.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            EditProductTileDetailsSection(
              productDataModel: productDataModel,
            ),
            const Spacer(),
            EditProductTileTrailingSection(
              onDelete: onDelete,
              onEdit: onEdit,
              price: productDataModel.price,
            )
          ],
        ),
      ),
    );
  }
}

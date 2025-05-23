import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/theming/colors_helper.dart';
import '../../../../core/utils/format_utils.dart';
import '../../../../core/widgets/custom_icon_button.dart';
import '../../../../core/widgets/custom_image_widget.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/manage_supplier_products_request_model.dart';

part 'custom_edit_product_tile_trailing_section.dart';
part 'edit_product_tile_details_section.dart';

class ManageProductsTile extends StatelessWidget {
  const ManageProductsTile(
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
    return Container(
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
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          width: 1.w,
          color: ColorsHelper.liteGray,
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(12.r),
        child: InkWell(
          onTap: onTap,
          splashColor: ColorsHelper.liteBlue.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(12.r),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 9.h),
                  child: CustomImageWidget(
                    imageUrl: productDataModel.image!,
                    placeholder: Padding(
                      padding: EdgeInsets.all(16.r),
                      child: const LoadingIndicator(
                        color: ColorsHelper.primaryColor,
                      ),
                    ),
                    errorWidget: Container(),
                    height: 56.h,
                    width: 56.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: EditProductTileDetailsSection(
                  productDataModel: productDataModel,
                ),
              ),
              Expanded(
                flex: 4,
                child: EditProductTileTrailingSection(
                  onDelete: onDelete,
                  onEdit: onEdit,
                  price: productDataModel.price,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

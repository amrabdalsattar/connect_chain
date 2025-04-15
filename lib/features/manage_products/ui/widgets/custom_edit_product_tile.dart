import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/core/widgets/custom_icon_button.dart';
import 'package:connect_chain/features/manage_products/data/models/manage_supplier_products_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'custom_edit_prodcut_tile_tralling_section.dart';
part 'edit_product_tile_details_section.dart';

class CustomEditProductTile extends StatelessWidget {
  const CustomEditProductTile(
      {super.key, required this.productDataModel, this.onEdit, this.onDelete});

  final ProductDataModel productDataModel;
  final void Function()? onEdit;
  final void Function()? onDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.h,
      width: 350.w,
      decoration: BoxDecoration(
        color: ColorsHelper.white,
        boxShadow: [
          BoxShadow(
            color: ColorsHelper.black.withOpacity(0.25),
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
          // Image section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
            child: Image.network(
              productDataModel.image ??
                  'https://s3-alpha-sig.figma.com/img/8e01/174f/927fad91c4e994e5447560f57ee19b89?Expires=1745798400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=gqd90vJ4KckdMLcFnB4INGPso8Q~vUgD8oA6NE-hTtzGcKdTc8-DsZCrsKh8FJ99C5ayKypcKGPiRXFoHSVKInh3Q0MGDjncmWbVT-xNa~s5jK9fMeJLZXEc5b~qShY84yNTe48iPQYZwV6suNJ8pcI1lvGkZewYVAw9Z6IAs70RaNMM~m2cpX2ekeDZExLiDJ0ApL0HuAhIICFQ0nNG~GaQPKv8GCrb2ySNcJmya5~PUXyzGWFJD4ca0plsJj7LKF2jVUwtqqoxpzdRtKYUAcRoazGkASmvRLgzaRo4x24AaPHaOC2GO3fLN-pAgSk9HjCj2JTMEzvbquAzh5N1hA__',
              height: 56.h,
              width: 56.w,
              fit: BoxFit.cover,
            ),
          ),
          const EditProducttileDetailsSection(),
          const Spacer(),
          EditProdcutTileTrallingSection(
            onDelete: onDelete,
            onEdit: onEdit,
          )
        ],
      ),
    );
  }
}

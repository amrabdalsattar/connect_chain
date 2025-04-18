import 'package:cached_network_image/cached_network_image.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/core/widgets/loading_indicator.dart';
import 'package:connect_chain/features/home/data/models/response_models/top_sold_products_response_model.dart';
import 'package:connect_chain/features/home/ui/sections/most_selling_section/widgets/sold_quantity_text_span.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MostSellingProductWidget extends StatelessWidget {
  final TopSoldProductDataModel productDataModel;
  const MostSellingProductWidget({super.key, required this.productDataModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.w,
      margin: EdgeInsetsDirectional.only(end: 5.w),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 25.h),
      decoration: BoxDecoration(
          color: ColorsHelper.homeScaffoldColor,
          borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: CachedNetworkImage(
              imageUrl: productDataModel.imageUrl,
              placeholder: (_, __) =>
                  const LoadingIndicator(color: ColorsHelper.primaryColor),
              errorWidget: (_, __, ___) =>
                  const Icon(Icons.error, color: ColorsHelper.primaryColor),
              width: 60.w,
              height: 60.h,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            productDataModel.productName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.cairoGrayMedium12,
          ),
          SoldQuantityTextSpan(
            soldQuantity: productDataModel.totalSoldQuantity,
          )
        ],
      ),
    );
  }
}

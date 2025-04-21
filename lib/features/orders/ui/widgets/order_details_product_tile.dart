part of '../order_details_screen.dart';

class OrderDetailsProductTile extends StatelessWidget {
  const OrderDetailsProductTile({
    super.key,
    required this.product,
  });
  final OrderProductModel product;

  @override
  Widget build(BuildContext context) {
    final showImage =
        product.imageUrls.isNullOrEmpty() ? '' : product.imageUrls![0];
    return SizedBox(
      height: 70.h,
      child: Row(
        children: [
          Flexible(
              fit: FlexFit.loose,
              child: CustomImageWidget(
                width: 70.w,
                height: 70.h,
                imageUrl: showImage,
              )),
          horizontalSpace(15),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.productName,
                  overflow: TextOverflow.ellipsis,
                  style:
                      AppTextStyles.cairoFadedBlack16.copyWith(fontSize: 14.sp),
                ),
                Text(
                  'blue',
                  style:
                      AppTextStyles.cairoFadedBlack16.copyWith(fontSize: 14.sp),
                ),
              ],
            ),
          ),
          horizontalSpace(14),
          Text(
            '${product.quantity} * ${product.unitPrice}',
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.cairoFadedBlack16.copyWith(fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}

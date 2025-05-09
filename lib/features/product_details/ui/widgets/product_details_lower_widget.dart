part of '../product_details_screen.dart';

class ProductDetailsLowerWidget extends StatelessWidget {
  const ProductDetailsLowerWidget({
    super.key,
    required this.productResponseModel,
  });

  final ProductDetailsResponseModel productResponseModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 33.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Price & Ratting row
          Row(
            children: [
              Text(
                '${priceFormat(productResponseModel.price)} EGP',
                style: AppTextStyles.cairoBlackBold20,
                textDirection: TextDirection.ltr,
              ),
              const Spacer(),
              SvgPicture.asset(
                AppImages.starIcon,
                width: 20.w,
                height: 20.h,
              ),
              const HorizontalSpace(width: 8),
              Text(
                '0.0',
                style: AppTextStyles.cairoBlackBold20,
                maxLines: 1,
                overflow: TextOverflow.fade,
              ),
            ],
          ),
          const VerticalSpace(height: 12),
          // Category Row
          Row(
            children: [
              const HorizontalSpace(width: 16),
              SvgPicture.asset(
                AppImages.categoryIcon,
                width: 16.w,
                height: 16.h,
              ),
              const HorizontalSpace(width: 8),
              Text(productResponseModel.categoryName,
                  style: AppTextStyles.cairoBlackBold15),
            ],
          ),
          const VerticalSpace(height: 24),
          // Inventory Info Section
          Text(
            'معلومات المخزون',
            style: AppTextStyles.cairoBlackSemiBold16,
          ),
          const VerticalSpace(height: 8),

          // Statistics Data Row
          Row(
            children: [
              StatisticsDataItem(
                  title: 'الكميه المتوفره حاليا',
                  imagePath: AppImages.documentIcon,
                  iconBackGroundColor:
                      ColorsHelper.grossProductsBackGroundColor,
                  value: '${productResponseModel.stock}'),
              const HorizontalSpace(width: 16),
              StatisticsDataItem(
                  title: 'حد التنبيه لنفاذ المخزون',
                  imagePath: AppImages.downChartIcon,
                  iconBackGroundColor:
                      ColorsHelper.rejectedOrderBackGroundColor,
                  value: '${productResponseModel.minimumStock}'),
              const HorizontalSpace(width: 16),
              StatisticsDataItem(
                  title: 'اخر اعاده تعبئه للمحزون',
                  imagePath: AppImages.clockIcon,
                  iconBackGroundColor: ColorsHelper.lastOrderBackGroundColor,
                  value: productResponseModel.updatedDate ??
                      'April ${DateTime.now().day}'),
            ],
          ),
          const VerticalSpace(height: 24),
          // Description Section
          Text(
            'الوصف',
            style: AppTextStyles.cairoBlackSemiBold16,
          ),
          const VerticalSpace(height: 8),

          Text(productResponseModel.description,
              style: AppTextStyles.cairoSemiGreyRegular12)
        ],
      ),
    );
  }
}

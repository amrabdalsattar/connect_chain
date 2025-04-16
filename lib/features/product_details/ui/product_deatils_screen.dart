import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/extensions.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/routing/routes.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/core/utils/format_utils.dart';
import 'package:connect_chain/core/widgets/custom_app_bar.dart';
import 'package:connect_chain/core/widgets/custom_images_slider.dart';
import 'package:connect_chain/features/add_product/ui/add_product_screen.dart';
import 'package:connect_chain/features/home/ui/widgets/statistics_data_item.dart';
import 'package:connect_chain/features/manage_products/data/models/manage_supplier_products_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

part 'widgets/product_details_images_section.dart';

class ProductDeatilsScreen extends StatelessWidget {
  const ProductDeatilsScreen({super.key, required this.productDataModel});

  final ProductDataModel productDataModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomTwoButtonsRow(
          rightText: 'تعديل',
          onRightTap: () {
            // Put the Edit Page Here
            context.pushNamed(Routes.editProductScreenRoute,
                arguments: productDataModel);
          },
          leftText: 'حذف',
          onLeftTap: () {}),
      appBar: CustomAppBar(title: productDataModel.name),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductDetailsImagesSection(productDataModel: productDataModel),
            Divider(
              color: ColorsHelper.liteGray,
              thickness: 6.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Price & Ratting row
                  Row(
                    children: [
                      horizontalSpace(16),
                      Text(
                        '${priceFormat(productDataModel.price)} EGP',
                        style: AppTextStyles.cairoBlackBold20,
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        AppImages.starIcon,
                        width: 20.w,
                        height: 20.h,
                      ),
                      horizontalSpace(8),
                      Text(
                        '${productDataModel.id}',
                        style: AppTextStyles.cairoBlackBold20,
                      ),
                    ],
                  ),
                  verticalSpace(12),
                  // Category Row
                  Row(
                    children: [
                      horizontalSpace(16),
                      SvgPicture.asset(
                        AppImages.categoryIcon,
                        width: 16.w,
                        height: 16.h,
                      ),
                      horizontalSpace(8),
                      Text('اكسسوارات', style: AppTextStyles.cairoBlackBold14),
                    ],
                  ),
                  verticalSpace(24),
                  // Inventory Info Section
                  Text(
                    'معلومات المخزون',
                    style: AppTextStyles.cairoBlackBold16,
                  ),
                  verticalSpace(8),
                  Row(
                    children: [
                      const StatisticsDataItem(
                          title: 'الكميه المتوفره حاليا',
                          imagePath: AppImages.documentIcon,
                          iconBackGroundColor:
                              ColorsHelper.grossProductsBackGroundColor,
                          value: '500'),
                      horizontalSpace(16),
                      const StatisticsDataItem(
                          title: 'حد التنبيه لنفاذ المخزون',
                          imagePath: AppImages.downChartIcon,
                          iconBackGroundColor:
                              ColorsHelper.rejectedOrderBackGroundColor,
                          value: '50'),
                      horizontalSpace(16),
                      const StatisticsDataItem(
                          title: 'اخر اعاده تعبئه للمحزون',
                          imagePath: AppImages.clockIcon,
                          iconBackGroundColor:
                              ColorsHelper.lastOrderBackGroundColor,
                          value: '5 OCT'),
                    ],
                  ),
                  verticalSpace(24),
                  // Description Section
                  Text(
                    'الوصف',
                    style: AppTextStyles.cairoBlackBold16,
                  ),
                  verticalSpace(8),

                  Text(
                      'استمتع بإطلالة عصرية مع هذه النضارة الشمسية الأنيقة المصممة لتوفير حماية كاملة من أشعة الشمس الضارة. تأتي بعدسات UV400 عالية الجودة لحماية عينيك من  الأشعة فوق البنفسجية، مع إطار خفيف الوزن ومتين يناسب جميع الأذواق.  مثالية للارتداء اليومي، السفر، أو القيادة',
                      style: AppTextStyles.cairoSemiGreyRegular12)
                ],
              ),
            ),
            verticalSpace(33)
          ],
        ),
      ),
    );
  }
}

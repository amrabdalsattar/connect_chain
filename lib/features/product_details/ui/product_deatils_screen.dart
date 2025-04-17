import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/dialogs_helper.dart';
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
import 'package:connect_chain/features/product_details/logic/cubit/product_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../data/models/product_details_response_model.dart';
// Part of this Widget
part 'widgets/product_details_images_section.dart';

class ProductDeatilsScreen extends StatelessWidget {
  const ProductDeatilsScreen({super.key, required this.productResponseModel});

  final ProductDetailsResponseModel productResponseModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomTwoButtonsRow(
          rightText: 'تعديل',
          onRightTap: () {
            // Put the Edit Page Here
            context.pushNamed(Routes.editProductScreenRoute,
                arguments: productResponseModel);
          },
          leftText: 'حذف',
          onLeftTap: () {
            DialogsHelper.showConfirmationDialog(
              context: context,
              message: 'هل انت ماكد؟',
              onContinue: () {},
              onCancel: () {},
            );
          }),
      appBar: CustomAppBar(title: productResponseModel.name),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image Section
            ProductDetailsImagesSection(product: productResponseModel),
            Divider(
              color: ColorsHelper.liteGray,
              thickness: 6.h,
            ),
            ProductDetailsLowerWidget(
                productResponseModel: productResponseModel),
            verticalSpace(33)
          ],
        ),
      ),
    );
  }
}

class ProductDetailsLowerWidget extends StatelessWidget {
  const ProductDetailsLowerWidget({
    super.key,
    required this.productResponseModel,
  });

  final ProductDetailsResponseModel productResponseModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Price & Ratting row
          Row(
            children: [
              horizontalSpace(16),
              Text(
                '${priceFormat(productResponseModel.price)} EGP',
                style: AppTextStyles.cairoBlackBold20,
              ),
              const Spacer(),
              SvgPicture.asset(
                AppImages.starIcon,
                width: 20.w,
                height: 20.h,
              ),
              horizontalSpace(8),
              // Ratting Part
              Text(
                productResponseModel.categoryName,
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

          // Statistics Data Row
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
                  iconBackGroundColor: ColorsHelper.lastOrderBackGroundColor,
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
    );
  }
}

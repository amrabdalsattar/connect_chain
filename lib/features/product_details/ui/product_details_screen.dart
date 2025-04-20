import 'package:connect_chain/core/helpers/extensions.dart';
import 'package:connect_chain/core/routing/routes.dart';
import 'package:connect_chain/core/widgets/custom_image_widget.dart';
import 'package:connect_chain/features/product_details/logic/cubit/product_details_cubit.dart';

import '../../../core/helpers/app_images.dart';
import '../../../core/helpers/dialogs_helper.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../../core/theming/colors_helper.dart';
import '../../../core/utils/format_utils.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_images_slider.dart';
import '../../add_product/ui/add_product_screen.dart';
import '../../home/ui/widgets/statistics_data_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../data/models/product_details_response_model.dart';

// Part of this Widget
part 'widgets/product_details_images_section.dart';
part 'widgets/product_details_lower_widget.dart';
part 'widgets/product_details_product_image.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.productResponseModel});

  final ProductDetailsResponseModel productResponseModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomTwoButtonsRow(
          rightText: 'تعديل',
          onRightTap: () {
            // Put the Edit Page Here
            context.pushNamed(Routes.editProductScreenRoute,
                arguments: context.read<ProductDetailsCubit>().productId);
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
      appBar: CustomAppBar(
        title: productResponseModel.name,
        isLeadedByLogo: false,
      ),
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

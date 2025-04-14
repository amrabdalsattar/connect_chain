import 'package:connect_chain/core/helpers/dialogs_helper.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/core/widgets/custom_app_bar.dart';
import 'package:connect_chain/core/widgets/custom_button.dart';
import 'package:connect_chain/core/widgets/upload_image.dart';
import 'package:connect_chain/features/add_product/logic/cubit/add_product_cubit.dart';
import 'package:connect_chain/features/add_product/ui/widgets/add_product_images_list.dart';
import 'package:flutter/material.dart';
import 'package:connect_chain/features/add_product/ui/widgets/product_details_section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'widgets/add_products_button.dart';
part 'widgets/add_prodcut_image_list_bloc_consumer.dart';
part 'widgets/add_product_images_section.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'إضافة منتج ',
      ),
      bottomNavigationBar:
          //  Buttons row
          const AddProductButtons(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(32),
                const AddProductImagesSection(),
                verticalSpace(32),
                const ProductDetailsSection(),
                verticalSpace(24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

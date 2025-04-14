import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/core/widgets/custom_app_bar.dart';
import 'package:connect_chain/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:connect_chain/features/add_product/ui/widgets/product_images_section.dart';
import 'package:connect_chain/features/add_product/ui/widgets/product_details_section.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'widgets/add_products_button.dart';

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
                const ProductImagesSection(),
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

import 'dart:io';

import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/widgets/custom_app_bar.dart';
import 'package:connect_chain/core/widgets/custom_button.dart';
import 'package:connect_chain/core/widgets/custom_dropdown_button.dart';
import 'package:connect_chain/core/widgets/editable_text_form_field.dart';
import 'package:connect_chain/core/widgets/labeled_field.dart';
import 'package:connect_chain/core/widgets/upload_image.dart';
import 'package:connect_chain/features/edit_product/logic/cubit/edit_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/product_image_list.dart';

// Parts of The Screen
part 'widgets/edit_product_details_section.dart';

class EditProductScreen extends StatelessWidget {
  const EditProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final editProductCubit = context.read<EditProductCubit>();
    return Scaffold(
      appBar: const CustomAppBar(title: 'تعديل المنتج'),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24),
        child: CustomButton(
          onTap: () {},
          title: 'حفظ',
          width: 340.w,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(32),
                const UploadImageWidget(),
                verticalSpace(24),
                //  Fake Image
                ProductImageList(
                  imageFiles: [
                    File(''),
                    File(''),
                  ],
                ),
                verticalSpace(24),
                // ProductDetailsSection
                EditProductDetailsSection(editProductCubit: editProductCubit),
                verticalSpace(16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import '../../../core/helpers/dialogs_helper.dart';
import '../../../core/helpers/extensions.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../../core/theming/colors_helper.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_dropdown_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/labeled_field_row.dart';
import '../../../core/widgets/labeled_field.dart';
import '../../../core/widgets/product_image_list.dart';
import '../../../core/widgets/upload_image_widget.dart';
import '../logic/cubit/add_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Parts are used to split the code into smaller files for better organization and readability.

part '../../../core/widgets/custom_two_buttons_row.dart';
part 'widgets/add_product_image_list_bloc_consumer.dart';
part 'widgets/add_product_images_section.dart';
part 'widgets/product_details_section.dart';
part 'widgets/add_product_details_bloc_listener.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final addProductCubit = context.read<AddProductCubit>();
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'إضافة منتج ',
      ),
      bottomNavigationBar:
          //  Buttons row
          CustomTwoButtonsRow(
        onRightTap: () async {
          await addProductCubit.emitAddProductStates();
        },
        leftText: 'الغاء',
        rightText: 'اضافة',
      ),
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
                AddProductDetailsBlocListener(addProductCubit: addProductCubit),
                verticalSpace(24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import '../../../core/helpers/dialogs_helper.dart';
import '../../../core/helpers/extensions.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_dropdown_button.dart';
import '../../../core/widgets/custom_empty_widget.dart';
import '../../../core/widgets/custom_loading_indicator.dart';
import '../../../core/widgets/editable_text_form_field.dart';
import '../../../core/widgets/labeled_field.dart';
import '../../../core/widgets/upload_image_widget.dart';
import '../data/model/edit_product_request_model.dart';
import '../logic/cubit/edit_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/product_image_list.dart';

// Parts of The Screen
part 'widgets/edit_product_details_section.dart';
part 'widgets/edit_product_screen_body.dart';
part 'widgets/edit_product_image_bloc_builder.dart';
part 'widgets/edit_product_bloc_consumer.dart';

class EditProductScreen extends StatelessWidget {
  const EditProductScreen(
      {super.key, required this.editProductCubit, required this.product});

  final EditProductCubit editProductCubit;
  final EditProductRequestModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'تعديل المنتج'),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24),
        child: CustomButton(
          onTap: () {
            final EditProductCubit cubit = context.read<EditProductCubit>();
            cubit.saveProductUpdates();
          },
          title: 'حفظ',
          width: 340.w,
        ),
      ),
      body: EditProductScreenBody(
          editProductCubit: editProductCubit, product: product),
    );
  }
}

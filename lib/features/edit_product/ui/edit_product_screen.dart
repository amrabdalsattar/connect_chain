import 'package:connect_chain/core/helpers/dialogs_helper.dart';
import 'package:connect_chain/core/helpers/extensions.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/widgets/custom_app_bar.dart';
import 'package:connect_chain/core/widgets/custom_button.dart';
import 'package:connect_chain/core/widgets/custom_dropdown_button.dart';
import 'package:connect_chain/core/widgets/custom_empty_widget.dart';
import 'package:connect_chain/core/widgets/custom_loading_indicator.dart';
import 'package:connect_chain/core/widgets/editable_text_form_field.dart';
import 'package:connect_chain/core/widgets/labeled_field.dart';
import 'package:connect_chain/core/widgets/upload_image_widget.dart';
import 'package:connect_chain/features/edit_product/data/model/edit_product_request_model.dart';
import 'package:connect_chain/features/edit_product/logic/cubit/edit_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/product_image_list.dart';

// Parts of The Screen
part 'widgets/edit_product_details_section.dart';
part 'widgets/edit_product_screen_body.dart';
part 'widgets/edit_product_image_bloc_builder.dart';
part 'widgets/edit_prodcut_bloc_consumer.dart';

class EditProductScreen extends StatelessWidget {
  const EditProductScreen({super.key, required this.editProductCubit, required this.product});

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

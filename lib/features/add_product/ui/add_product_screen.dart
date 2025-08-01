import 'package:toastification/toastification.dart';
import '../../../core/helpers/dialogs_helper.dart';
import '../../../core/helpers/extensions.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../../core/theming/colors_helper.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_dropdown_button.dart';
import '../../../core/widgets/custom_loading_indicator.dart';
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
part 'widgets/add_product_categories_drop_down.dart';

class AddProductBlocBuilder extends StatelessWidget {
  const AddProductBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final addProductCubit = context.read<AddProductCubit>();
    return BlocConsumer<AddProductCubit, AddProductState>(
      bloc: addProductCubit,
      buildWhen: (previous, current) =>
          current is AddProductCategoriesErrorState ||
          current is AddProductCategoriesLoadingState ||
          current is AddProductCategoriesSuccessState,
      builder: (context, state) {
        return state.whenOrNull(
              categoriesSucces: () =>
                  AddProductScreen(addProductCubit: addProductCubit),
              categoriesLoading: () =>
                  const Scaffold(body: Center(child: CustomLoadingIndicator())),
            ) ??
            const SizedBox();
      },
      listener: (context, state) {
        state.whenOrNull(
          // Sumbit States
          loading: () => DialogsHelper.showLoading(context),

          error: (apiErrorModel) {
            // Close the loading dialog
            context.pop();
            // Closes The page
            context.pop();
            DialogsHelper.showToastificationMessage(
                context: context,
                alignment: Alignment.bottomCenter,
                title: 'Error',
                description: apiErrorModel.getErrorMessages()!,
                type: ToastificationType.error);
          },
          success: () {
            // Close the loading dialog
            context.pop();
            DialogsHelper.showSnackBar(context, 'تم إضافة المنتج بنجاح');
            context.pop();
          },

          // Auto Fill States
          autoFillSucess: () {
            context.pop();
          },
          // Fetch Categories State
          categoriesError: () {
            context.pop();
            DialogsHelper.showErrorDialog(context, 'خطا اثناء التحميل');
          },
        );
      },
    );
  }
}

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({
    super.key,
    required this.addProductCubit,
  });

  final AddProductCubit addProductCubit;

  @override
  Widget build(BuildContext context) {
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
        onLeftTap: () {
          // addProductCubit.clearAllFields();
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
                const VerticalSpace(height: 32),
                const AddProductImagesSection(),
                const VerticalSpace(height: 32),
                AddProductDetailsBlocListener(addProductCubit: addProductCubit),
                const VerticalSpace(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

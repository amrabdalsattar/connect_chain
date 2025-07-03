part of '../add_product_screen.dart';

class AddProductDetailsBlocListener extends StatelessWidget {
  const AddProductDetailsBlocListener(
      {super.key, required this.addProductCubit});

  final AddProductCubit addProductCubit;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddProductCubit, AddProductState>(
      listenWhen: (previous, current) =>
          current is AddProductLoadingState ||
          current is AddProductErrorState ||
          current is AddProductSuccessState ||
          current is AddProductAutoFillSuccessState,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => DialogsHelper.showLoading(context),
          error: (apiErrorModel) {
            // Close the loading dialog
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
          autoFillSucess: () {
            context.pop();
          },
        );
      },
      child: ProductDetailsSection(addProductCubit: addProductCubit),
    );
  }
}

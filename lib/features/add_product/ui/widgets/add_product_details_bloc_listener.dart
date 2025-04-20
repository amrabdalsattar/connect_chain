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
          current is AddProductErrostate ||
          current is AddProductSuccessState,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => DialogsHelper.showLoading(context),
          error: (apiErrorModel) {
            // Close the loading dialog
            context.pop();
            DialogsHelper.showErrorDialog(
                context, apiErrorModel.getErrorMessages()!);
          },
          success: () {
            // Close the loading dialog
            context.pop();
            DialogsHelper.showSnackBar(context, 'تم إضافة المنتج بنجاح');
            context.pop();
          },
        );
      },
      child: ProductDetailsSection(addProductCubit: addProductCubit),
    );
  }
}

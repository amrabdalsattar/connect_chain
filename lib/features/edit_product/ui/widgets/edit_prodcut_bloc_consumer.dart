part of '../edit_product_screen.dart';

class EditProductBlocConsumer extends StatelessWidget {
  const EditProductBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProductCubit, EditProductState>(
        buildWhen: (previous, current) =>
            current is EditProductLoadingState ||
            current is GetEditProductSuccessState ||
            current is EditProductLoadingState,
        listener: (context, state) {
          state.whenOrNull(
            error: (apiErrorModel) {
              context.pop();

              DialogsHelper.showErrorDialog(
                  context, apiErrorModel.getErrorMessages()!);
            },
            success: () {
              context.pop();
              DialogsHelper.showSnackBar(context, 'تم حفظ التعديل');
            },
          );
        },
        builder: (context, state) {
          return state.mapOrNull(
                loading: (_) => const Scaffold(body: CustomLoadingIndicator()),
                getProductSuccess: (productState) {
                  final editProductCubit = context.read<EditProductCubit>();
                  return EditProductScreen(
                    editProductCubit: editProductCubit,
                    product: productState.prodcut,
                  );
                },
              ) ??
              const CustomEmptyWidget(message: 'لا يوجد منتج');
        });
  }
}

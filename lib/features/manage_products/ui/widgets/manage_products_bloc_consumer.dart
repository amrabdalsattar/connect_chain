part of '../manage_products_screen.dart';

class ManageProductsBlocConsumer extends StatelessWidget {
  const ManageProductsBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ManageProductsCubit, ManageProductsState>(
      buildWhen: (previous, current) {
        return current is ManageProductsLoadingState ||
            current is ManageProductsSuccessState ||
            current is MangeProductsOperationSuccessState ||
            current is ManageProductsErrorState;
      },
      builder: (context, state) {
        return state.mapOrNull(
                loading: (_) => const CustomLoadingIndicator(),
                error: (errorState) => CustomErrorWidget(
                    errorMessage:
                        errorState.error.getErrorMessages() ?? "Unkown Error"),
                success: (succssState) {
                  if (succssState.products.data.isEmpty) {
                    return const CustomEmptyWidget(
                      message: 'لم يتم العثور علي منتجات');
                  }
                  // Show Data if Not Emtpy
                  return ManageProductsList(
                    products: succssState.products.data,
                  );
                }) ??
            const CustomErrorWidget(errorMessage: 'Unkown Error');
      },
      listenWhen: (previous, current) =>
          current is MangeProductsOperationSuccessState ||
          current is MangeProductsOperationFailedState,
      listener: (_, state) {
        state.whenOrNull(
          operationFailed: (errorMessage) => DialogsHelper.showSnackBar(
            context,
            errorMessage,
            backgroundColor: ColorsHelper.rejectedOrderBackGroundColor,
          ),
          operationSuccess: (message) =>
              DialogsHelper.showSnackBar(context, message),
        );
      },
    );
  }
}

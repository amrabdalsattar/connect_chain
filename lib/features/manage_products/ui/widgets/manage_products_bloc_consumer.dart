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
            current is ManageProductsErrorState;
      },
      builder: (context, state) {
        return state.whenOrNull(
                loading: () => ShimmerLoadingList(
                    itemCount: 3,
                    containerWidth: double.infinity,
                    containerHeight: 80.h,
                    scrollDirection: Axis.vertical,
                    listHeight: 300),
                error: (errorState) => ImagedError(
                      errorMessage: errorState.getErrorMessages()!,
                      imagePath: AppImages.emptyErrorImage,
                    ),
                success: (succssState) {
                  if (succssState.isEmpty) {
                    return const ImagedError(
                      errorMessage: 'لم يتم العثور علي منتجات',
                      imagePath: AppImages.emptyErrorImage,
                    );
                  }
                  // Show Data if Not Emtpy
                  return ManageProductsList(
                    products: succssState,
                  );
                }) ??
            const ImagedError(errorMessage: 'Unkown Error');
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

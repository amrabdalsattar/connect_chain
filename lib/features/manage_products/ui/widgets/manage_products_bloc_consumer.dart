part of '../manage_products_screen.dart';

class ManageProductsBlocConsumer extends StatelessWidget {
  const ManageProductsBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ManageProdutsCubit, ManageProdutsState>(
      buildWhen: (previous, current) =>
          current is ManageProductsLoadingState ||
          current is ManageProductsSuccessState ||
          current is MangeProductsoperationSuccessState,
      builder: (context, state) { 
        return state.mapOrNull(
              loading: (_) => const Center(child: CircularProgressIndicator()),
              success: (successState) => ManageProductsList(
                products: successState.products.data,
              ),
            ) ??
            const Center(
              child: Text('No Products Was found'),
            );
      },
      listener: (context, state) {
        state.whenOrNull(
          error: (errorState) => DialogsHelper.showSnackBar(
            context,
            errorState.message ?? '',
            backgroundColor: ColorsHelper.rejectedOrderBackGroundColor,
          ),
          operationSuccess: (message) =>
              DialogsHelper.showSnackBar(context, message),
          operationFailed: (message) => DialogsHelper.showSnackBar(
            context,
            message,
            backgroundColor: ColorsHelper.rejectedOrderBackGroundColor,
          ),
        );
      },
    );
  }
}

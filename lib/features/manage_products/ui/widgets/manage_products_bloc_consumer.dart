part of '../manage_products_screen.dart';

class ManageProductsBlocConsumer extends StatelessWidget {
  const ManageProductsBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ManageProdutsCubit, ManageProdutsState>(
      buildWhen: (previous, current) {
        return current is ManageProductsLoadingState ||
            current is ManageProductsSuccessState ||
            current is MangeProductsoperationSuccessState;
      },
      builder: (context, state) {
        if (state is ManageProductsSuccessState) {
          // If the products list is empty, show a message
          return ManageProductsList(
            products: state.products.data,
          );
        } else if (state is ManageProductsLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(
            child: Text('No Products Was found'),
          );
        }
      },
      listener: (context, state) {
        state.whenOrNull(
          operationSuccess: (message) =>
              DialogsHelper.showSnackBar(context, message),
          operationFailed: (message) => DialogsHelper.showSnackBar(
              context, message,
              backgroundColor: ColorsHelper.rejectedOrderBackGroundColor),
        );
      },
    );
  }
}

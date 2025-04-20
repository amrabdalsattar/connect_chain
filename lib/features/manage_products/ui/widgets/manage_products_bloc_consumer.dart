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
            current is ManageProductsErrorState ||
            current is EmptyProductsList ||
            current is UpdatedProductsListState;
      },
      builder: (context, state) {
        if (state is ManageProductsSuccessState) {
          return ManageProductsList(
            products: state.products,
          );
        } else if (state is UpdatedProductsListState) {
          return ManageProductsList(
            products: state.products,
          );
        } else if (state is ManageProductsLoadingState) {
          return ShimmerLoadingList(
            itemCount: 4,
            listHeight: MediaQuery.of(context).size.height,
            containerHeight: 80,
            containerWidth: 100,
            scrollDirection: Axis.vertical,
          );
        } else if (state is EmptyProductsList) {
          return const Center(
            child: Text('No Products Was found'),
          );
        } else {
          return const Center(
            child: Text('No Products Was found'),
          );
        }
      },
      listenWhen: (previous, current) =>
          current is MangeProductsOperationSuccessState ||
          current is MangeProductsOperationFailedState,
      listener: (_, state) {
        state.whenOrNull(
          operationSuccess: (message) =>
              DialogsHelper.showSnackBar(context, message),
        );
      },
    );
  }
}

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
            current is MangeProductsOperationSuccessState;
      },
      builder: (context, state) {
        if (state is ManageProductsSuccessState) {
          // If the products list is empty, show a message
          return ManageProductsList(
            products: state.products.data,
          );
        } else if (state is ManageProductsLoadingState) {
          return ShimmerLoadingList(
            itemCount: 4,
            listHeight: MediaQuery.of(context).size.height,
            containerHeight: 80,
            containerWidth: 100,
            scrollDirection: Axis.vertical,
          );
        } else {
          return const Center(
            child: Text('No Products Was found'),
          );
        }
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
        );
      },
    );
  }
}

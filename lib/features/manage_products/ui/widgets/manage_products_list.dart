part of '../manage_products_screen.dart';

class ManageProductsList extends StatelessWidget {
  const ManageProductsList({
    super.key,
    required this.products,
  });

  final List<ProductDataModel> products;

  @override
  Widget build(BuildContext context) {
    // Instance of The ManageProductsCubit
    final ManageProductsCubit manageProductsCubit =
        context.read<ManageProductsCubit>();

    return ListView.separated(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: products.length,
      reverse: true,
      itemBuilder: (context, index) {
        return ManageProductsTile(
          onTap: () {
            context.pushNamed(Routes.productDetailsScreenRoute,
                arguments: products[index].id);
          },
          onDelete: () {
            manageProductsCubit.deleteProduct(products[index].id);
          },
          onEdit: () async {
            await context.pushNamed(Routes.editProductScreenRoute,
                arguments: products[index].id);
            if (!context.mounted) return;
            context
                .read<ManageProductsCubit>()
                .toggleRefreshButtonVisibility(true);
          },
          productDataModel: products[index],
        );
      },
      separatorBuilder: (context, index) {
        return const VerticalSpace(height: 24);
      },
    );
  }
}

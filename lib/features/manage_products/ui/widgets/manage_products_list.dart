part of '../manage_products_screen.dart';

class ManageProductsList extends StatelessWidget {
  const ManageProductsList({
    super.key,
    required this.products,
  });

  final List<ProductDataModel> products;

  @override
  Widget build(BuildContext context) {
    // Instance of The ManageProdutsCubit
    ManageProdutsCubit manageProdutsCubit = context.read<ManageProdutsCubit>();

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ManageProductsTile(
          onTap: () {
            context.pushNamed(Routes.productDetailsScreenRoute,
                arguments: products[index].id);
          },
          onDelete: () {
            manageProdutsCubit.deleteProduct(products[index].id);
          },
          onEdit: () {
            context.pushNamed(Routes.editProductScreenRoute,
                arguments: products[index]);
          },
          productDataModel: products[index],
        );
      },
      separatorBuilder: (context, index) {
        return verticalSpace(24);
      },
    );
  }
}

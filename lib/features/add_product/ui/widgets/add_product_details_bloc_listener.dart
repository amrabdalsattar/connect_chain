part of '../add_product_screen.dart';

class AddProductDetailsBlocListener extends StatelessWidget {
  const AddProductDetailsBlocListener(
      {super.key, required this.addProductCubit});

  final AddProductCubit addProductCubit;

  @override
  Widget build(BuildContext context) {
    return ProductDetailsSection(addProductCubit: addProductCubit);
  }
}

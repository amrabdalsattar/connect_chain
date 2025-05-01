part of '../edit_product_screen.dart';

class EditProductImageBlocBuilder extends StatelessWidget {
  const EditProductImageBlocBuilder({
    super.key,
    required this.product,
    required this.editProductCubit,
  });

  final EditProductRequestModel product;
  final EditProductCubit editProductCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProductCubit, EditProductState>(
      buildWhen: (previous, current) =>
          current is EditProductImageDeletedState ||
          current is EditProductImageUploadSuccessState ||
          current is EditProductImageErrorState,
      builder: (context, state) {
        if (product.imageUrls!.isEmpty || product.imageUrls == null) {
          return const SizedBox();
        }

        return ProductImageList(
          imageFiles: editProductCubit.productImages,
          onDeleteTap: (imageIndex) {
            editProductCubit.removeImage(imageIndex);
          },
        );
      },
    );
  }
}

part of '../add_product_screen.dart';

class AddProductImagesListBlocConsumer extends StatelessWidget {
  const AddProductImagesListBlocConsumer({
    super.key,
    required this.addProductCubit,
  });

  final AddProductCubit addProductCubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductCubit, AddProductState>(
      buildWhen: (previous, current) =>
          current is AddProductImageUploadSuccessState ||
          current is AddProductImageErrorState ||
          current is AddProductLoadingState ||
          current is AddProductImageInitial ||
          current is AddProductImageDeleted,
      builder: (context, state) {
        return ProductImageList(
          imageFiles:
              addProductCubit.productImages.map((file) => file).toList(),
          onDeleteTap: (image) => addProductCubit.deleteImage(image),
        );
      },
      listener: (context, state) {
        if (state is AddProductImageErrorState) {
          DialogsHelper.showErrorDialog(context, state.error);
        }
      },
    );
  }
}

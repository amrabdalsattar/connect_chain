part of '../add_product_screen.dart';

class AddProductImagesSection extends StatelessWidget {
  const AddProductImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final addProductCubit = context.read<AddProductCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'صور المنتج',
          style:
              AppTextStyles.cairoBlackSemiBold16.copyWith(color: Colors.black),
        ),
        verticalSpace(18),
        UploadImageWidget(
          onTap: () async {
            await addProductCubit.pickImage();
          },
        ),
        verticalSpace(24),
        AddProductImagesListBlocConsumer(addProductCubit: addProductCubit),
      ],
    );
  }
}

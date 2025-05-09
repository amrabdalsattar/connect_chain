part of '../edit_product_screen.dart';

class EditProductScreenBody extends StatelessWidget {
  const EditProductScreenBody({
    super.key,
    required this.editProductCubit,
    required this.product,
  });

  final EditProductCubit editProductCubit;
  final EditProductRequestModel product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpace(height: 32),
              UploadImageWidget(
                onTap: () async {
                  await editProductCubit.addImage();
                },
              ),
              const VerticalSpace(height: 24),
              //  Image Section
              EditProductImageBlocBuilder(
                  product: product, editProductCubit: editProductCubit),
              const VerticalSpace(height: 24),
              // ProductDetailsSection
              EditProductDetailsSection(editProductCubit: editProductCubit),
              const VerticalSpace(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

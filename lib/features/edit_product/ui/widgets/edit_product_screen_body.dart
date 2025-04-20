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
              verticalSpace(32),
              UploadImageWidget(
                onTap: () async{
                 await editProductCubit.uploadImage();
                },
              ),
              verticalSpace(24),
              //  Image Section
              EditProdcutImageBlocBuilder(
                  product: product, editProductCubit: editProductCubit),
              verticalSpace(24),
              // ProductDetailsSection
              EditProductDetailsSection(editProductCubit: editProductCubit),
              verticalSpace(16),
            ],
          ),
        ),
      ),
    );
  }
}

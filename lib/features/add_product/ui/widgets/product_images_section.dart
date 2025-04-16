import '../../../../core/helpers/dialogs_helper.dart';
import '../../logic/cubit/add_product_cubit.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/upload_image.dart';
import '../../../../core/widgets/product_images_list.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          style: AppTextStyles.cairoBlackBold16.copyWith(color: Colors.black),
        ),
        verticalSpace(18),
        UploadImageWidget(
          onTap: () async {
            await addProductCubit.pickImage();
          },
        ),
        verticalSpace(24),
        BlocConsumer<AddProductCubit, AddProductState>(
          buildWhen: (previous, current) =>
              current is AddProductImageUploadSuccessState ||
              current is AddProdcutImageErrorState ||
              current is AddProductLoadingState ||
              current is AddProductImageInitial ||
              current is AddproductImageDeleted,
          builder: (context, state) {
            return ProductImageList(
              imageFiles:
                  addProductCubit.productImages.map((file) => file).toList(),
              onDeleteTap: (image) => addProductCubit.deleteImage(image),
            );
          },
          listener: (context, state) {
            if (state is AddProdcutImageErrorState) {
              DialogsHelper.showErrorDialog(context, state.error);
            }
          },
        ),
      ],
    );
  }
}

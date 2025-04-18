import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/dialogs_helper.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/upload_image.dart';
import '../../logic/cubit/add_product_cubit.dart';
import 'add_product_images_list.dart';

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
              current is AddProductImageErrorState ||
              current is AddProductLoadingState ||
              current is AddProductImageInitial ||
              current is AddProductImageDeleted,
          builder: (context, state) {
            return AddProductImagesList(
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
        ),
      ],
    );
  }
}

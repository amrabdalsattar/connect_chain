part of 'manage_product_tile.dart';

class EditProductTileTrailingSection extends StatelessWidget {
  const EditProductTileTrailingSection(
      {super.key, this.onEdit, this.onDelete, required this.price});

  final void Function()? onEdit;
  final void Function()? onDelete;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          // Edit and Delete Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomIconButton(
                iconPath: AppImages.editIcon,
                onTap: onEdit,
              ),
              horizontalSpace(22),
              CustomIconButton(
                iconPath: AppImages.deleteIcon,
                onTap: onDelete,
              ),
            ],
          ),
          verticalSpace(10),
          // Price Section
          Text(
            textDirection: TextDirection.ltr,
            '${priceFormat(price)} EGP',
            style: AppTextStyles.cairoBlackSemiBold16
                .copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

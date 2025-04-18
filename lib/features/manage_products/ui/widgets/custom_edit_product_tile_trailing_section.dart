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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Edit and Delete Buttons
          Row(
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
            '${priceFormat(price)} EGP',
            style: AppTextStyles.cairoBlackBold16
                .copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

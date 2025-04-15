part of 'custom_edit_product_tile.dart';

class EditProdcutTileTrallingSection extends StatelessWidget {
  const EditProdcutTileTrallingSection({super.key, this.onEdit, this.onDelete});

  final void Function()? onEdit;
  final void Function()? onDelete;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
      child: Column(
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
            '700 EGP',
            style: AppTextStyles.cairoBlackMedium16
                .copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

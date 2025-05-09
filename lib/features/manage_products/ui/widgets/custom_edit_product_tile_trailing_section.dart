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
              const HorizontalSpace(width: 22),
              CustomIconButton(
                iconPath: AppImages.deleteIcon,
                onTap: onDelete,
              ),
            ],
          ),
          const VerticalSpace(height: 10),
          // Price Section
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              textDirection: TextDirection.rtl,
              '${priceFormat(price)} ج.م',
              style: AppTextStyles.cairoBlackSemiBold16
                  .copyWith(fontSize: 14.sp)
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}

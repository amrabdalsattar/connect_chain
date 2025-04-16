part of 'custom_edit_product_tile.dart';

class EditProductTileDetailsSection extends StatelessWidget {
  const EditProductTileDetailsSection({
    super.key,
    required this.name,
    required this.stock,
  });
  final String name;
  final int stock;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: AppTextStyles.cairoBlackMedium16),
        Text('$stock منتج في المخزن',
            style: AppTextStyles.cairoSemiDarkSemiBold12)
      ],
    );
  }
}

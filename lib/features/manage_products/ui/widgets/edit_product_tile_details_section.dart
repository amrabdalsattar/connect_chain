part of 'custom_edit_product_tile.dart';
class EditProducttileDetailsSection extends StatelessWidget {
  const EditProducttileDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Camera 4K', style: AppTextStyles.cairoBlackMedium16),
        Text('11 منتج في المخزن',
            style: AppTextStyles.cairoSemiDarkSemiBold12)
      ],
    );
  }
}

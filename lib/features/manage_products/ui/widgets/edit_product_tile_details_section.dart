part of 'manage_product_tile.dart';

class EditProductTileDetailsSection extends StatelessWidget {
  const EditProductTileDetailsSection({
    super.key,
    required this.productDataModel,
  });
  final ProductDataModel productDataModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productDataModel.name,
          style: AppTextStyles.cairoBlackRegular16,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          '${productDataModel.stock} منتج في المخزن',
          style: AppTextStyles.cairoSemiDarkSemiBold12,
        )
      ],
    );
  }
}

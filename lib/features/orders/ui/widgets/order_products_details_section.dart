part of '../order_details_screen.dart';

class OrderProductsDetailsSection extends StatelessWidget {
  const OrderProductsDetailsSection({
    super.key,
    required this.prodcuts,
  });

  final List<OrderProductModel> prodcuts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' تفاصيل المنتجات',
            style: AppTextStyles.cairoPrimaryBold20,
          ),
          const VerticalSpace(height: 16),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: prodcuts.length,
            separatorBuilder: (context, index) =>
                const VerticalSpace(height: 16),
            itemBuilder: (context, index) => OrderDetailsProductTile(
              product: prodcuts[index],
            ),
          ),
        ],
      ),
    );
  }
}

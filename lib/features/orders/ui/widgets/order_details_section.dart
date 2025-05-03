part of '../order_details_screen.dart';

class OrderDetailsBody extends StatelessWidget {
  const OrderDetailsBody({
    super.key,
    required this.orderDetailsModel,
  });

  final OrderDetailsResponseModel orderDetailsModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Start of OrderDetails
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 11),
            child: Column(
              children: [
                OrderDetailsText(
                  fieldText: 'رقم الطلب',
                  valueText: '${orderDetailsModel.orderNumber}',
                ),
                const VerticalSpace(height: 8),
                OrderDetailsText(
                  fieldText: 'التاريخ',
                  valueText: orderDetailsModel.orderDate,
                ),
                const VerticalSpace(height: 8),
                OrderDetailsText(
                  fieldText: 'حاله الطلب',
                  valueText: orderDetailsModel.orderStatus.label,
                ),
              ],
            ),
          ),
          _buildCustomDivider(),

          // Order Products Details
          OrderProductsDetailsSection(prodcuts: orderDetailsModel.pordcuts),

          _buildCustomDivider(),

          // Order Payment Details
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                OrderDetailsText(
                    fieldText: 'المجموع الفرعي',
                    valueText: '${orderDetailsModel.subTotal} EGP'),
                const VerticalSpace(height: 8),
                OrderDetailsText(
                    fieldText: 'الخصم(code123) ',
                    valueText: '${orderDetailsModel.discount} EGP'),
                const VerticalSpace(height: 8),
                OrderDetailsText(
                    fieldText: 'خدمه التوصيل ',
                    valueText: '${orderDetailsModel.deliveryFees} EGP'),
              ],
            ),
          ),

          _buildCustomDivider(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: OrderDetailsText(
              fieldText: 'الاجمالي',
              fieldTextStyle:
                  AppTextStyles.cairoRedBold12.copyWith(fontSize: 20),
              valueText: '${orderDetailsModel.totalAmount} EGP',
              valueTextStyle:
                  AppTextStyles.cairoRedBold12.copyWith(fontSize: 20),
            ),
          ),
          _buildCustomDivider(),

          // Customer Details Section
          OrderDetailsCustomerDetailsSection(
              orderDetailsModel: orderDetailsModel),
          const VerticalSpace(height: 38),
        ],
      ),
    );
  }
}

Widget _buildCustomDivider() {
  return Column(
    children: [
      const VerticalSpace(height: 24),
      Divider(
        color: ColorsHelper.liteGray,
        thickness: 6.h,
      ),
      const VerticalSpace(height: 24),
    ],
  );
}

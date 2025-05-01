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
                verticalSpace(8),
                OrderDetailsText(
                  fieldText: 'التاريخ',
                  valueText: orderDetailsModel.orderDate,
                ),
                verticalSpace(8),
                OrderDetailsText(
                  fieldText: 'حاله الطلب',
                  valueText: orderDetailsModel.orderStatus.label,
                ),
              ],
            ),
          ),
          _buildCustomDvider(),

          // Order Products Details
          OrderProductsDetailsSection(prodcuts: orderDetailsModel.pordcuts),

          _buildCustomDvider(),

          // Order Payment Details
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                OrderDetailsText(
                    fieldText: 'المجموع الفرعي',
                    valueText: '${orderDetailsModel.subTotal} EGP'),
                verticalSpace(8),
                OrderDetailsText(
                    fieldText: 'الخصم(code123) ',
                    valueText: '${orderDetailsModel.discount} EGP'),
                verticalSpace(8),
                OrderDetailsText(
                    fieldText: 'خدمه التوصيل ',
                    valueText: '${orderDetailsModel.deliveryFees} EGP'),
              ],
            ),
          ),

          _buildCustomDvider(),

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
          _buildCustomDvider(),

          // Customer Details Section
          OrderDetailsCustomerDetailsSection(
              orderDetailsModel: orderDetailsModel),
          verticalSpace(38)
        ],
      ),
    );
  }
}

Widget _buildCustomDvider() {
  return Column(
    children: [
      verticalSpace(24),
      Divider(
        color: ColorsHelper.liteGray,
        thickness: 6.h,
      ),
      verticalSpace(24),
    ],
  );
}

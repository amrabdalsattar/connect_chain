part of '../order_details_screen.dart';

class OrderDetailsText extends StatelessWidget {
  const OrderDetailsText({
    super.key,
    required this.fieldText,
    required this.valueText,
    this.fieldTextStyle,
    this.valueTextStyle,
  });

  final String fieldText;
  final String valueText;
  final TextStyle? fieldTextStyle;
  final TextStyle? valueTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$fieldText :',
          style: fieldTextStyle ?? AppTextStyles.cairoBlackBold15,
          overflow: TextOverflow.ellipsis,
        ),
        const Spacer(),
        Text(
          valueText,
          style: valueTextStyle ?? AppTextStyles.cairoFadedBlack16,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

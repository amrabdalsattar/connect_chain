part of '../orders_tab.dart';



class OrderWidgetText extends StatelessWidget {
  const OrderWidgetText({
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
    return RichText(
      text: TextSpan(
          text: '$fieldText :',
          style: fieldTextStyle ?? AppTextStyles.carioGrayBold12,
          children: [
            TextSpan(
                text: ' $valueText',
                style: valueTextStyle ?? AppTextStyles.carioGaryRegular12)
          ]),
    );
  }
}

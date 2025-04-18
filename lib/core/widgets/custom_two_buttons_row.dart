part of '../../features/add_product/ui/add_product_screen.dart';

class CustomTwoButtonsRow extends StatelessWidget {
  const CustomTwoButtonsRow({
    super.key,
    required this.rightText,
    required this.leftText,
    this.onLeftTap,
    this.onRightTap,
  });
  final String rightText;
  final String leftText;
  final void Function()? onLeftTap;
  final void Function()? onRightTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            title: rightText,
            width: 166.w,
            onTap: onRightTap,
            borderColor: ColorsHelper.primaryColor,
            radius: 12,
          ),
          CustomButton(
            onTap: onLeftTap,
            textStyle: AppTextStyles.cairoBlackBold16
                .copyWith(fontWeight: FontWeight.w500),
            title: leftText,
            width: 166.w,
            color: ColorsHelper.white,
            radius: 12,
          ),
        ],
      ),
    );
  }
}

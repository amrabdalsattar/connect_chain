part of '../orders_tab.dart';

class OrderWidgetButton extends StatelessWidget {
  const OrderWidgetButton({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 300.w,
        height: 40.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
            color: ColorsHelper.liteGray,
            borderRadius: BorderRadius.circular(12.r)),
        child: Row(
          children: [
            Text(
              'تفاصيل',
              style: AppTextStyles.carioGrayBold12,
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward,
              color: ColorsHelper.gray,
            )
          ],
        ),
      ),
    );
  }
}

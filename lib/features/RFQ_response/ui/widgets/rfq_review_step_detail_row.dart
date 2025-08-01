part of '../screens/rfq_response_screen.dart';

class RfqReviewStepDetailRow extends StatelessWidget {
 const RfqReviewStepDetailRow({
  super.key,
  required this.label,
  required this.value,
  this.isTotal = false,
});
  final String label;
  final String value;
  final bool isTotal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              '$label:',
              style: isTotal
                  ? AppTextStyles.cairoBlackBold15
                  : AppTextStyles.carioGrayBold12,
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: isTotal
                  ? AppTextStyles.cairoBlackBold15.copyWith(
                      color: ColorsHelper.primaryColor,
                    )
                  : AppTextStyles.cairoBlackRegular16.copyWith(fontSize: 14.sp),
            ),
          ),
        ],
      ),
    );
  }
}

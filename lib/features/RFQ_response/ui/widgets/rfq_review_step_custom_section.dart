part of '../screens/rfq_response_screen.dart';

class RfqReviewStepCustomSection extends StatelessWidget {
  const RfqReviewStepCustomSection({super.key, required this.title, required this.child});
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorsHelper.dividerGray),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.cairoBlackBold15,
          ),
          const VerticalSpace(height: 16),
          child,
        ],
      ),
    );
  }
}

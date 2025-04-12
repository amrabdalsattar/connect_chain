part of '../profile_screen.dart';

class ProfileDetailsItem extends StatelessWidget {
  final ProfileItemModel itemModel;

  const ProfileDetailsItem({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: ColorsHelper.liteGray),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  itemModel.title,
                  style: AppTextStyles.cairoSemiDarkSemiBold12,
                ),
                verticalSpace(8),
                Text(
                  itemModel.subtitle,
                  style: AppTextStyles.tajawaldarkGrayRegular16,
                ),
              ],
            ),
          ),
          // Edit Button
          TextButton(
            onPressed: itemModel.onEditTap,
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size(50.w, 30.h),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              'تعديل',
              style: AppTextStyles.cairoBlackMedium16.copyWith(
                decoration: TextDecoration.underline,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

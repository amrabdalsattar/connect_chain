part of '../notifications_tab.dart';

class NotificationTile extends StatelessWidget {
  final NotificationModel notification;

  const NotificationTile({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22.w, vertical: 8.h),
      padding:
          EdgeInsets.only(left: 25.w, right: 13.5.w, top: 10.h, bottom: 23.5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: ColorsHelper.borderGray, width: 1.w)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 16.r,
            child: CustomImageWidget(imageUrl: ''),
          ),
          horizontalSpace(14.5),
          Expanded(
            child: Text(notification.body,
                style: AppTextStyles.cairoBlackBold13.copyWith(
                  fontWeight: FontWeightHelper.medium,
                )),
          ),
          horizontalSpace(15),
          Text(DateFormat.jm().format(notification.date),
              style: AppTextStyles.cairoSemiGreyRegular12),
        ],
      ),
    );
  }
}

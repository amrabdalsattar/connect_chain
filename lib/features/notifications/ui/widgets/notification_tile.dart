part of '../notifications_tab.dart';

class NotificationTile extends StatelessWidget {
  final NotificationItemModel notification;
  const NotificationTile({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 14.h),
      decoration: BoxDecoration(
        border: Border.all(color: ColorsHelper.fadedGray),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ListTile(
        leading: Image.asset(
          AppImages.notificationsIcon,
          color: notification.isRead ? null : ColorsHelper.primaryColor,
          height: 20.r,
        ),
        title: Text(
          notification.title,
          style: AppTextStyles.cairoBlackBold13,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          notification.body,
          style:
              AppTextStyles.cairoFadedBlackRegular16.copyWith(fontSize: 13.sp),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text(DateFormat.jm().format(DateTime.now()),
            style: AppTextStyles.cairoSemiGreyRegular12),
      ),
    );
  }
}

// Container(
//       margin: EdgeInsets.symmetric(vertical: 8.h),
//       padding:
//           EdgeInsets.only(left: 25.w, right: 13.5.w, top: 10.h, bottom: 23.5.h),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(color: ColorsHelper.borderGray, width: 1.w)),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Image.asset(
//             AppImages.notificationsIcon,
//             height: 20.r,
//             color: ColorsHelper.primaryColor,
//           ),
//           horizontalSpace(14.5),
//           Expanded(
//             child: Text(notification.body,
//                 style: AppTextStyles.cairoBlackBold13.copyWith(
//                   fontWeight: FontWeightHelper.medium,
//                 )),
//           ),
//           horizontalSpace(15),
//           Text(DateFormat.jm().format(DateTime.now()),
//               style: AppTextStyles.cairoSemiGreyRegular12),
//         ],
//       ),
//     );

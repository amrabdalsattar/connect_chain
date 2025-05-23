import '../../../../core/helpers/app_images.dart';
import '../../../../core/widgets/imaged_error.dart';
import '../../../../core/widgets/shimmer_loading_list.dart';
import '../../logic/cubit/notifications_cubit.dart';
import '../../logic/cubit/notifications_state.dart';
import 'notifications_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsBlocBuilder extends StatelessWidget {
  const NotificationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsCubit, NotificationsState>(
        bloc: context.read<NotificationsCubit>(),
        buildWhen: (previous, current) =>
            current is NotificationsLoadingState ||
            current is NotificationsSuccessState ||
            current is NotificationsErrorState,
        builder: (_, state) {
          switch (state) {
            case NotificationsLoadingState():
              return ShimmerLoadingList(
                  itemCount: 4,
                  containerWidth: double.infinity,
                  containerHeight: 88.h,
                  scrollDirection: Axis.vertical,
                  listHeight: MediaQuery.of(context).size.height);
            case NotificationsErrorState():
              return const ImagedError(
                errorMessage: 'لا يوجد إشعارات بعد',
                imagePath: AppImages.notificationErrorImage,
              );

            case NotificationsSuccessState():
              return NotificationsListView(
                  notifications: state.notifications ?? []);
          }
        });
  }
}

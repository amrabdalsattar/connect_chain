import '../../../core/helpers/app_images.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../../core/theming/colors_helper.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../data/models/notifications_response_model.dart';
import '../data/repos/notifications_repo.dart';
import '../logic/cubit/notifications_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../core/di/dependency_injection.dart';
import 'widgets/notifications_bloc_builder.dart';

part 'widgets/notification_tile.dart';

class NotificationsTab extends StatelessWidget {
  const NotificationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'الإشعارات',
        hideBackButton: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 22.w),
        child: BlocProvider<NotificationsCubit>(
          create: (context) => NotificationsCubit(getIt<NotificationsRepo>()),
          child: const NotificationsBlocBuilder(),
        ),
      ),
    );
  }
}

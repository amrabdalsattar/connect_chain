import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/theming/colors_helper.dart';
import '../../../chat/ui/chat_screen.dart';
import '../../../chat/ui/dynamic_cross_app_chat.dart';

class NotificationCardIcon extends StatelessWidget {
  const NotificationCardIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Chat Screen logic
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => ChatScreen(
        //     currentUserId: '1',
        //     currentUserName: 'zakaria',
        //     targetUserId: '3',
        //     targetUserName: 'mohamed',
        //   ),
        // ));
        context.pushNamed(Routes.notificationScreenRoute);
      },
      child: Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1),
        ),
        child: Center(
          child: Image.asset(
            width: 24.w,
            height: 24.h,
            AppImages.notificationsIcon,
            color: ColorsHelper.black,
          ),
        ),
      ),
    );
  }
}

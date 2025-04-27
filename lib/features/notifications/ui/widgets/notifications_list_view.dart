import 'package:connect_chain/features/notifications/data/models/notifications_response_model.dart';
import 'package:connect_chain/features/notifications/ui/notifications_tab.dart';
import 'package:flutter/material.dart';

class NotificationsListView extends StatelessWidget {
  final List<NotificationItemModel> notifications;
  const NotificationsListView({super.key, required this.notifications});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList.builder(
          itemCount: notifications.length,
          itemBuilder: (_, index) =>
              NotificationTile(notification: notifications[index]),
        )
      ],
    );
  }
}

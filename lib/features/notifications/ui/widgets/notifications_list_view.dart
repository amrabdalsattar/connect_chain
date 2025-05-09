import '../../data/models/notifications_response_model.dart';
import '../notifications_tab.dart';
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

import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/core/theming/font_weight_helper.dart';
import 'package:connect_chain/core/widgets/custom_app_bar.dart';
import 'package:connect_chain/features/notifications/data/models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

part 'widgets/notification_tile.dart';

class NotificationsTab extends StatelessWidget {
  final List<NotificationModel> notifications;

  const NotificationsTab({super.key, required this.notifications});

  @override
  Widget build(BuildContext context) {
    final grouped = _groupNotificationsByDate(notifications);
    final sortedDates = grouped.keys.toList()..sort((a, b) => b.compareTo(a));

    return Scaffold(
      appBar: CustomAppBar(title: 'الإشعارات'),
      body: ListView.builder(
        itemCount: sortedDates.length,
        itemBuilder: (context, index) {
          final date = sortedDates[index];
          final items = grouped[date]!;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                child: Text(_formatDate(date),
                    style: AppTextStyles.cairoBlackBold13),
              ),
              ...items.map((notification) =>
                  NotificationTile(notification: notification)),
            ],
          );
        },
      ),
    );
  }

  Map<DateTime, List<NotificationModel>> _groupNotificationsByDate(
      List<NotificationModel> notifications) {
    final map = <DateTime, List<NotificationModel>>{};
    for (var notificationItem in notifications) {
      final key = DateTime(notificationItem.date.year,
          notificationItem.date.month, notificationItem.date.day);
      map.putIfAbsent(key, () => []).add(notificationItem);
    }
    return map;
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));

    if (date == today) return 'اليوم ${date.day} ${_monthName(date.month)}';
    if (date == yesterday) return 'أمس ${date.day} ${_monthName(date.month)}';
    return '${date.day} ${_monthName(date.month)}';
  }

  String _monthName(int month) {
    const months = [
      'يناير',
      'فبراير',
      'مارس',
      'أبريل',
      'مايو',
      'يونيو',
      'يوليو',
      'أغسطس',
      'سبتمبر',
      'أكتوبر',
      'نوفمبر',
      'ديسمبر',
    ];
    return months[month - 1];
  }
}

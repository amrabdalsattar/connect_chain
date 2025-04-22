class NotificationModel {
  final String body;
  final DateTime date;

  NotificationModel({required this.body, required this.date});
}

final dmmyData = [
  NotificationModel(
    body:
        'طلب جديد: تمت إضافة طلب من شركة Company A (يرجى المتابعة من صفحة الطلبات)',
    date: DateTime.now().subtract(const Duration(hours: 2)),
  ),
  NotificationModel(
    body:
        'طلب جديد: تمت إضافة طلب من شركة Company A (يرجى المتابعة من صفحة الطلبات)',
    date: DateTime.now().subtract(const Duration(hours: 3)),
  ),
  NotificationModel(
    body: 'تم رفض الطلب رقم #12345B4324D (يرجى المتابعة من صفحة الطلبات)',
    date: DateTime.now().subtract(const Duration(days: 1, hours: 1)),
  ),
  NotificationModel(
    body: 'تم رفض الطلب رقم #12345B4324D (يرجى المتابعة من صفحة الطلبات)',
    date: DateTime.now().subtract(const Duration(days: 1, hours: 3)),
  ),
  NotificationModel(
    body: 'تم إلغاء الطلب رقم #12345B4324D (يرجى المتابعة من صفحة الطلبات)',
    date: DateTime.now().subtract(const Duration(days: 2, hours: 2)),
  ),
  NotificationModel(
    body: 'تم إلغاء الطلب رقم #12345B4324D (يرجى المتابعة من صفحة الطلبات)',
    date: DateTime.now().subtract(const Duration(days: 2, hours: 4)),
  ),
];

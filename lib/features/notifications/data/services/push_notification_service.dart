import 'dart:developer';

import 'package:connect_chain/features/notifications/data/services/local_notification_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  static final FirebaseMessaging _firebaseMessaging =
      FirebaseMessaging.instance;

  static Future<void> init() async {
    try {
      await Firebase.initializeApp();
      _firebaseMessaging.setAutoInitEnabled(true);

      await _firebaseMessaging.requestPermission();
      String? token = await _firebaseMessaging.getToken();

      log(token ?? 'null token');

      // Background
      FirebaseMessaging.onBackgroundMessage(_handleBackgroundMessage);

      // Foreground
      await _handleForegroundMessage();
    } catch (error) {
      log('Error initializing push notifications: $error');
    }
  }

  static Future<void> _handleForegroundMessage() async {
    FirebaseMessaging.onMessage.listen((message) {
      // show local notification
      LocalNotificationService.showBasicNotification(message);
    });
  }

  static Future<void> _handleBackgroundMessage(RemoteMessage message) async {
    await Firebase.initializeApp();
    log(message.notification?.title ?? 'null message');
  }
}

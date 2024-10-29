import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../view/notification_page.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

class NotificationService {
  Future<void> initNotification() async {
    var notification = FirebaseMessaging.instance;
    String? token = await notification.getToken();
    print(token);
    notification.requestPermission();
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleBackgroundMessageAction);
  }
}

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print(message.notification!.title);
}

void handleBackgroundMessageAction(RemoteMessage message) async {
  navigatorKey.currentState!.push(MaterialPageRoute(
    builder: (context) => NotificationPage(
      message: message,
    ),
  ));
}

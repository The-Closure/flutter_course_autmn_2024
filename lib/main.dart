import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_session/service/notification_service.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'view/storage_page.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await NotificationService().initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: StoragePage(),
    );
  }
}

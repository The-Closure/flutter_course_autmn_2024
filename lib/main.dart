import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_session/pages/home_page.dart';
import 'package:firebase_session/pages/second_home_page.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'pages/login_page.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SecondHomePage(),
    );
  }
}

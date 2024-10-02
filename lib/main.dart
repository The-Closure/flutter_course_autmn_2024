import 'package:auth_and_jwt/model/user_model.dart';
import 'package:auth_and_jwt/service/auth_service.dart';
import 'package:auth_and_jwt/view/login_page.dart';
import 'package:auth_and_jwt/view/myinfo_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogInPage(),
    );
  }
}

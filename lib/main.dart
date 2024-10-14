import 'package:flutter/material.dart';
import 'package:widgets_and_more_widgets/view/home_page.dart';
import 'package:widgets_and_more_widgets/view/info_page.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InfoPage(),
    );
  }
}

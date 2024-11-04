import 'package:flutter/material.dart';
import 'package:getx_and_graphql/view/homepage.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

main() async {
  await initHiveForFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

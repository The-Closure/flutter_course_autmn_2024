import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_and_graphql/view/auth_page.dart';

main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      themeMode: box.read<String>("token") == null
          ? ThemeMode.light
          : ThemeMode.dark,
      home: AuthPage(),
    );
  }
}

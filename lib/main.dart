import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('ar', 'AR')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('ar', 'AR'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('hello').tr(),
          ElevatedButton(
            onPressed: () {
              if(context.locale.languageCode == 'ar'){
                context.setLocale(Locale('en', 'US'));
              }else{
                context.setLocale(Locale('ar', 'AR'));
              }
            },
            child: Text('change language').tr(),
          ),
        ],
      ),
    );
  }
}

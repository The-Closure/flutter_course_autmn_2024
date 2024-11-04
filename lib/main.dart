import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_and_map/bloc/theme_bloc.dart';
import 'package:theme_and_map/core/config/di.dart';
import 'package:theme_and_map/core/theme/app_theme.dart';
import 'package:theme_and_map/view/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc()..add(InitThemeEvent()),
      child: BlocBuilder<ThemeBloc, ThemeData>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: state,
            // theme: AppTheme.darkTheme,
            home: const HomePage(),
            // the
          );
        },
      ),
    );
  }
}

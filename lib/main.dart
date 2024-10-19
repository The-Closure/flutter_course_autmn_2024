import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:folder_structure/bloc/nurse_bloc.dart';
import 'package:folder_structure/core/config/injection_conatiner.dart';
import 'package:shared_preferences/shared_preferences.dart';

// late SharedPreferences sharedPreferences;
void main(List<String> args) {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NurseBloc(
        
      ),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // sharedPreferences.setString('token', 'hello');
                getIt.get<SharedPreferences>().setString('hello', 'HELLO');
              },
              child: const Text(
                'Set Data',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                // print(sharedPreferences.getString('token'));
                print(getIt.get<SharedPreferences>().getString('hello'));
              },
              child: const Text(
                'Get Data',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

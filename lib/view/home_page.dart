import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_and_map/bloc/theme_bloc.dart';
import 'package:theme_and_map/core/theme/app_theme.dart';
import 'package:theme_and_map/main.dart';
import 'package:theme_and_map/view/map_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MapPage(),
            ),
          );
        },
        child: const Icon(
          Icons.abc,
        ),
      ),
      appBar: AppBar(
        actions: [
          BlocBuilder<ThemeBloc, ThemeData>(
            builder: (context, state) {
              return Switch(
                value: state == AppTheme.darkTheme,
                onChanged: (value) {
                  context.read<ThemeBloc>().add(ChangeThemeEvent());
                },
              );
            },
          )
        ],
        title: const Text(
          'Theme App',
          // style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Center(
        child: Text(
          'Hello Flutter',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}

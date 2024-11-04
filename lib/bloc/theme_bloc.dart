import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_and_map/core/config/di.dart';
import 'package:theme_and_map/core/theme/app_theme.dart';

part 'theme_event.dart';
// part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(AppTheme.lightTheme) {
    on<InitThemeEvent>((event, emit) async {
      bool isDarkTheme = await isDark();
      emit(isDarkTheme ? AppTheme.darkTheme : AppTheme.lightTheme);
    });
    on<ChangeThemeEvent>(
      (event, emit) {
        bool isDarkTheme = state == AppTheme.darkTheme;
        emit(
          isDarkTheme ? AppTheme.lightTheme : AppTheme.darkTheme,
        );
        setTheme(!isDarkTheme);
      },
    );
  }
  Future<bool> isDark() async {
    return getIt.get<SharedPreferences>().getBool('is_dark') ?? false;
  }

  Future<void> setTheme(bool isDark) async {
    getIt.get<SharedPreferences>().setBool('is_dark', isDark);
  }
}

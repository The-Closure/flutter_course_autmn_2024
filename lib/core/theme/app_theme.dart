import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.purple.withOpacity(0.8),
      foregroundColor: Colors.white,
      // elevation: 20,
      shadowColor: Colors.pink,
      // surfaceTintColor: Colors.white,
    ),
    // colorSchemeSeed: Colors.amber,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.purple,
      brightness: Brightness.light,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.purple,
    )),
    primaryColor: Colors.grey,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 70,
        fontWeight: FontWeight.w800,
        fontStyle: FontStyle.italic,
        color: Colors.grey,
      ),
      headlineSmall: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        color: Colors.black,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.amber.withOpacity(0.8),
      foregroundColor: Colors.white,
      // elevation: 20,
      shadowColor: Colors.yellow,
      // surfaceTintColor: Colors.white,
    ),
    // colorSchemeSeed: Colors.amber,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.amber,
      brightness: Brightness.dark,
      // surfaceContainerLow: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.amber,
    )),
    primaryColor: Colors.white,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 70,
        fontWeight: FontWeight.w800,
        fontStyle: FontStyle.italic,
        color: Colors.white,
      ),
      headlineSmall: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        color: Colors.white,
      ),
    ),
  );
}

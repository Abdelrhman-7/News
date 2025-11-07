// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:news/core/colormanager.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: false,

    scaffoldBackgroundColor: Colors.white,
    splashColor: Colormanager.black,
    primaryColor: Colormanager.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 20, color: Colors.black),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
      labelMedium: TextStyle(fontSize: 12, color: Colors.grey),
    ),

    colorScheme: const ColorScheme.light(
      primary: Colormanager.black,
      secondary: Colormanager.red,
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.black,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    splashColor: Colormanager.white,
    primaryColor: Colormanager.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    textTheme: TextTheme(
      bodyLarge: const TextStyle(fontSize: 20, color: Colors.white),
      bodyMedium: const TextStyle(fontSize: 16, color: Colors.white),
      labelMedium: TextStyle(fontSize: 12, color: Colors.grey[400]),
    ),

    colorScheme: const ColorScheme.dark(
      primary: Colormanager.primaryDark,
      secondary: Colormanager.blue,
      surface: Colors.black,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
    ),
  );
}

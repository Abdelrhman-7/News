// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:news/core/colormanager.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colormanager.black,
    primaryColorDark: Colormanager.primaryDark,
    primaryColorLight: Colormanager.primaryLight,
    splashColor: Colormanager.primaryDark,
    scaffoldBackgroundColor: Colors.white,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colormanager.primaryDark,
    primaryColorDark: Colormanager.primaryDark,
    primaryColorLight: Colormanager.primaryLight,
    splashColor: Colormanager.primaryLight,
    scaffoldBackgroundColor: Colors.black,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      elevation: 0,
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
  );
}

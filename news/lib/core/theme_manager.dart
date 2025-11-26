import 'package:flutter/material.dart';
import 'package:news/core/colormanager.dart';

class ThemeManager {
  // Light theme: خلفية بيضاء، نص أيقونات سوداء
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colormanager.white,
    primaryColor: Colormanager.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colormanager.white,
      foregroundColor: Colormanager.black,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colormanager.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colormanager.black),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: Colormanager.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(color: Colormanager.black, fontSize: 16),
      labelMedium: TextStyle(
        // ignore: deprecated_member_use
        color: Colormanager.black.withOpacity(0.7),
        fontSize: 14,
      ),
    ),
    cardColor: Colormanager.white,

    // ignore: deprecated_member_use
    splashColor: Colormanager.black.withOpacity(0.08),
    iconTheme: IconThemeData(color: Colormanager.black),
  );

  // Dark theme: خلفية سوداء، نص وأيقونات بيضاء
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colormanager.black,
    primaryColor: Colormanager.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colormanager.black,
      foregroundColor: Colormanager.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colormanager.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colormanager.white),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: Colormanager.white,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        // ignore: deprecated_member_use
        color: Colormanager.white.withOpacity(0.9),
        fontSize: 16,
      ),
      labelMedium: TextStyle(
        // ignore: deprecated_member_use
        color: Colormanager.white.withOpacity(0.7),
        fontSize: 14,
      ),
    ),
    cardColor: Colormanager.black,
    // ignore: deprecated_member_use
    splashColor: Colormanager.white.withOpacity(0.08),
    iconTheme: IconThemeData(color: Colormanager.white),
  );
}

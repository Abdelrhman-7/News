import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle bold20(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.bodyLarge?.color,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bold16(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.bodyLarge?.color,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle medium14(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.bodyMedium?.color,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium20(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.bodyLarge?.color,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium24(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.bodyLarge?.color,
      fontSize: 24,
      fontWeight: FontWeight.w500,
    );
  }
}

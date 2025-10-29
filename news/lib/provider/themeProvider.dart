// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Themeprovider extends ChangeNotifier {
  String appTheme = 'dark';

  void changeTheme(String newTheme) {
    if (appTheme == newTheme) {
      return;
    }
    appTheme = newTheme;
    notifyListeners();
  }
}

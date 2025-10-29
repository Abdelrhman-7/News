// ignore_for_file: file_names

import 'package:flutter/foundation.dart';

class Applanguageprovider extends ChangeNotifier {
  String appLanguage = 'en';

  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }
}

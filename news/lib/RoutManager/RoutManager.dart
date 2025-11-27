import 'package:flutter/cupertino.dart';
import 'package:news/home/home_screen.dart';

class Routmanager {
  static const homeScreen = 'homeScreen';
  static const categoryDetails = 'CategoryDetails';
  static const bottomsheet = 'bottomsheet';
  static const newsdetails = 'newsdetails';
  static const search = 'search';
  static Map<String, WidgetBuilder> routes = {
    // ignore: non_constant_identifier_names
    homeScreen: (Context) => HomeScreen(),
  };
}

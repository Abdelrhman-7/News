import 'package:flutter/cupertino.dart';
import 'package:news/home/home_screen.dart';

class Routmanager {
  static const loginScreen = 'loginscreen';
  static const homeScreen = 'homeScreen';
  static const categoryDetails = 'CategoryDetails';
  static const bottomsheet = 'bottomsheet';
  static const newsdetails = 'newsdetails';

  static Map<String, WidgetBuilder> routes = {
    // ignore: non_constant_identifier_names
    homeScreen: (Context) => HomeScreen(),
    // ignore: equal_keys_in_map, non_constant_identifier_names

    // categoryDetails: (context) => CategoryDetails(category: widget.category.id,),
  };
}

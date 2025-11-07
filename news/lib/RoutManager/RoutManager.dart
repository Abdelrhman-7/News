import 'package:flutter/cupertino.dart';
import 'package:news/home/category_details.dart/category_details.dart';
import 'package:news/home/home_screen.dart';
import 'package:news/home/loginScreen.dart';

class Routmanager {
  static const loginScreen = 'loginscreen';
  static const homeScreen = 'homeScreen';
  static const categoryDetails = 'CategoryDetails';

  static Map<String, WidgetBuilder> routes = {
    // ignore: non_constant_identifier_names
    homeScreen: (Context) => HomeScreen(),
    // ignore: equal_keys_in_map, non_constant_identifier_names
    loginScreen: (Context) => Loginscreen(),
    // categoryDetails: (context) => CategoryDetails(category: widget.category.id,),
  };
}

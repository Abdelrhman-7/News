import 'package:flutter/material.dart';
import 'package:news/core/assetsmanager.dart';
import 'package:news/core/colormanager.dart';
import 'package:news/home/category_fragment/drwer/widget/app_config.dart';
import 'package:news/home/category_fragment/drwer/widget/divider_item.dart';
import 'package:news/home/category_fragment/drwer/widget/drewer_item.dart';
import 'package:news/provider/appLanguageProvider.dart';
import 'package:news/provider/themeProvider.dart';

class HomeDrewe extends StatelessWidget {
  HomeDrewe({super.key});
  List<AppThemeProvider> theme = [];
  List<Applanguageprovider> language = [];

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          color: Colormanager.white,
          width: double.infinity,
          height: hieght * 0.2,
          child: Text(
            "News App",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),

        DrewerItem(iconName: ImageAssets.home, text: "Go To Home"),
        DividerItem(),
        DrewerItem(iconName: ImageAssets.theme, text: "Theme"),
        AppConfig(),
        SizedBox(height: hieght * 0.01),
        DividerItem(),

        DrewerItem(iconName: ImageAssets.globle, text: "Language"),
        AppConfig(),
      ],
    );
  }
}

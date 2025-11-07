import 'package:flutter/material.dart';
import 'package:news/core/assetsmanager.dart';
import 'package:news/core/colormanager.dart';
import 'package:news/home/category_fragment/drwer/widget/language/language_config.dart';
import 'package:news/home/category_fragment/drwer/widget/divider_item.dart';
import 'package:news/home/category_fragment/drwer/widget/drewer_item.dart';
import 'package:news/home/category_fragment/drwer/widget/theme/theme_config.dart';
import 'package:news/l10n/app_localizations.dart';
import 'package:news/provider/appLanguageProvider.dart';
import 'package:news/provider/themeProvider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomeDrewe extends StatelessWidget {
  HomeDrewe({super.key});
  List<AppThemeProvider> theme = [];
  List<Applanguageprovider> language = [];

  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<Applanguageprovider>(context);
    //  var themeProvider = Provider.of<AppThemeProvider>(context);
    var hieght = MediaQuery.of(context).size.height;

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
        ThemeConfig(text: AppLocalizations.of(context)!.theme),
        SizedBox(height: hieght * 0.01),

        DividerItem(),
        DrewerItem(iconName: ImageAssets.globle, text: "Language"),
        LanguageConfig(text: languageProvider.appLanguage),
      ],
    );
  }
}

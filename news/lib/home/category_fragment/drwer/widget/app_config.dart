import 'package:flutter/material.dart';
import 'package:news/core/colormanager.dart';
import 'package:news/l10n/app_localizations.dart';

class AppConfig extends StatelessWidget {
  const AppConfig({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    //var providertheme = Provider.of<AppThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colormanager.white, width: 2),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.03,
        vertical: height * 0.01,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.001,
      ),
      child: Row(
        children: [
          Text(AppLocalizations.of(context)!.language),
          Spacer(),
          Icon(Icons.arrow_drop_down, size: 35, color: Colormanager.white),
        ],
      ),
    );
  }
}

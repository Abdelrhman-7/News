import 'package:flutter/material.dart';
import 'package:news/l10n/app_localizations.dart';
import 'package:news/provider/appLanguageProvider.dart';
import 'package:provider/provider.dart';

class Languagebottomsheet extends StatefulWidget {
  const Languagebottomsheet({super.key});

  @override
  State<Languagebottomsheet> createState() => _LanguagebottomsheetState();
}

class _LanguagebottomsheetState extends State<Languagebottomsheet> {
  String? newlanguage;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var languageProvider = Provider.of<Applanguageprovider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: height * 0.02),

        InkWell(
          onTap: () {
            languageProvider.changeLanguage('en');
            setState(() {});
          },
          child: languageProvider.appLanguage == "en"
              ? getSelectedItemWidget(AppLocalizations.of(context)!.english)
              : UnSelectedItemWidget(AppLocalizations.of(context)!.english),
        ),

        SizedBox(height: height * 0.02),

        InkWell(
          onTap: () {
            languageProvider.changeLanguage('ar');
            setState(() {});
          },
          child: languageProvider.appLanguage == "ar"
              ? getSelectedItemWidget(AppLocalizations.of(context)!.arabic)
              : UnSelectedItemWidget(AppLocalizations.of(context)!.arabic),
        ),
      ],
    );
  }

  Widget getSelectedItemWidget(String language) {
    return Row(
      children: [
        Text(
          language,
          style: TextStyle(
            color: Theme.of(context).splashColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(Icons.check, color: Theme.of(context).primaryColor),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget UnSelectedItemWidget(String language) {
    return Text(
      language,
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

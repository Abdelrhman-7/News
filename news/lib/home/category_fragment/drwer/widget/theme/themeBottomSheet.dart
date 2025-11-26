import 'package:flutter/material.dart';

import 'package:news/l10n/app_localizations.dart';

import 'package:news/provider/themeProvider.dart';
import 'package:provider/provider.dart';

class Themebottomsheet extends StatefulWidget {
  const Themebottomsheet({super.key});

  @override
  State<Themebottomsheet> createState() => _ThemebottomsheetState();
}

class _ThemebottomsheetState extends State<Themebottomsheet> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<AppThemeProvider>(context);
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        InkWell(
          onTap: () {
            themeProvider.changeThemeMode(ThemeMode.dark);
            setState(() {});
          },
          // ignore: unrelated_type_equality_checks
          child: themeProvider.appTheme == 'dark'
              ? getSelectedTheme(AppLocalizations.of(context)!.dark)
              : UnselectedTheme(AppLocalizations.of(context)!.dark),
        ),
        SizedBox(height: height * 0.02),
        InkWell(
          onTap: () {
            themeProvider.changeThemeMode(ThemeMode.light);
            setState(() {});
          },
          // ignore: unrelated_type_equality_checks
          child: themeProvider.appTheme == 'light'
              ? getSelectedTheme(AppLocalizations.of(context)!.light)
              : UnselectedTheme(AppLocalizations.of(context)!.light),
        ),
      ],
    );
  }

  Widget getSelectedTheme(String newTheme) {
    return Row(
      children: [
        Text(
          newTheme,
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
  Widget UnselectedTheme(String newTheme) {
    return Row(
      children: [Text(newTheme, style: Theme.of(context).textTheme.bodyLarge)],
    );
  }
}

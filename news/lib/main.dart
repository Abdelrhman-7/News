import 'package:flutter/material.dart';
import 'package:news/RoutManager/RoutManager.dart';
import 'package:news/Utils/appTheme.dart';
import 'package:news/l10n/app_localizations.dart';
import 'package:news/provider/appLanguageProvider.dart';
import 'package:news/provider/themeProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Applanguageprovider()),
        ChangeNotifierProvider(create: (context) => AppThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    var LanguageProvider = Provider.of<Applanguageprovider>(context);
    var themeProvider = Provider.of<AppThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routmanager.routes,
      initialRoute: Routmanager.homeScreen,
      locale: Locale(LanguageProvider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.appTheme,
    );
  }
}

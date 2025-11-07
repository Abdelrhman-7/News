import 'package:flutter/material.dart';
import 'package:news/core/colormanager.dart';
import 'package:news/home/category_fragment/categoryfragment.dart';
import 'package:news/home/category_fragment/drwer/home_drewe.dart';
import 'package:news/l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.home,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),

      body: Categoryfragment(),
      drawer: Drawer(child: HomeDrewe()),
      backgroundColor: Colormanager.black,
    );
  }
}

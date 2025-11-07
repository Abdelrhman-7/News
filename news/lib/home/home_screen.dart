import 'package:flutter/material.dart';
import 'package:news/home/category_fragment/categoryfragment.dart';
import 'package:news/home/category_fragment/drwer/home_drewe.dart';
import 'package:news/l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.home),
      ),
      drawer: Drawer(child: HomeDrewe()),

      body: Categoryfragment(),
    );
  }
}
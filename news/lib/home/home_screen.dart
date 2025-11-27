import 'package:flutter/material.dart';
import 'package:news/core/colormanager.dart';
import 'package:news/home/category_fragment/categoryfragment.dart';
import 'package:news/home/category_fragment/drwer/home_drewe.dart';
import 'package:news/l10n/app_localizations.dart';
import 'package:news/model/category.dart';

import 'category_details.dart/category_details.dart';

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
        title: Text(
          selectedCategory == null
              ? AppLocalizations.of(context)!.home
              : selectedCategory!.titel,

          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),

      body: selectedCategory == null
          ? Categoryfragment(onCategoryItemClick: onCategoryItemClick)
          : CategoryDetails(category: selectedCategory!),
      drawer: Drawer(child: HomeDrewe(onDrawerItemClick: onDrawerItemClick)),
      backgroundColor: Colormanager.black,
    );
  }

  Category? selectedCategory;

  void onCategoryItemClick(Category newSelectedCategory) {
    selectedCategory = newSelectedCategory;
    setState(() {});
  }

  void onDrawerItemClick() {
    Navigator.pop(context);
    selectedCategory = null;
    setState(() {});
  }
}

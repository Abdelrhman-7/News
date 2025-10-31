// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:news/model/category.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
      child: Stack(children: [Image.asset(category.image)]),
    );
  }
}

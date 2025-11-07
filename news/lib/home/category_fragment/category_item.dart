// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:news/core/colormanager.dart';
import 'package:news/model/category.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  int index;

  CategoryItem({super.key, required this.category, required this.index});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colormanager.gray,
      ),
      child: Stack(
        alignment: (index % 2 == 0)
            ? Alignment.bottomRight
            : Alignment.bottomLeft,
        children: [
          Image.asset(
            category.image,
            height: height * 0.25,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          Container(
            width: width * 0.4,
            padding: EdgeInsetsDirectional.only(
              start: (index % 2 == 0) ? width * 0.02 : 0,
              end: (index % 2 == 0) ? 0 : width * 0.02,
            ),
            margin: EdgeInsets.symmetric(
              horizontal: width * 0.02,
              vertical: height * 0.009,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(84),
              color: Colormanager.gray,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: (index % 2 == 0)
                  ? TextDirection.ltr
                  : TextDirection.rtl,
              children: [
                Text(" View All", style: Theme.of(context).textTheme.bodyLarge),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: (index % 2 == 0)
                      ? Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Theme.of(context).splashColor,
                        )
                      : Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 25,
                          color: Theme.of(context).splashColor,
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

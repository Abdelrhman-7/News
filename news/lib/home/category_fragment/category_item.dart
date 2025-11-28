// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:news/core/colormanager.dart';
import 'package:news/model/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final int index;

  CategoryItem({super.key, required this.category, required this.index});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    bool isRight = index % 2 == 0;

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Theme.of(context).splashColor,
      ),
      child: Stack(
        children: [
          isRight
              ? Image.asset(
                  category.image,
                  height: height * 0.25,
                  //width: double.infinity,
                  //fit: BoxFit.cover,
                )
              : Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(3.14),
                  child: Image.asset(
                    category.image,
                    height: height * 0.25,
                    // width: double.infinity,
                    //fit: BoxFit.cover,
                  ),
                ),

          // ---- العنوان فوق و View All تحته ----
          Positioned(
            bottom: height * 0.02,
            right: isRight ? width * 0.02 : null,
            left: isRight ? null : width * 0.02,
            child: Column(
              crossAxisAlignment: isRight
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,

              children: [
                // ---- العنوان فوق ----
                Text(
                  category.titel,
                  style: TextStyle(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: height * 0.08),

                // ---- زرار View All تحت ----
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    // ignore: deprecated_member_use
                    color: Colormanager.gray.withOpacity(0.8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "View All",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Icon(
                          isRight
                              ? Icons.arrow_forward_ios_outlined
                              : Icons.arrow_back_ios_outlined,
                          size: 18,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                    ],
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

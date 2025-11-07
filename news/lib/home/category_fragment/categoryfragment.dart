import 'package:flutter/material.dart';
import 'package:news/home/category_fragment/category_item.dart';
import 'package:news/model/category.dart';

typedef OnCategoryItemClick = void Function(Category);

// ignore: must_be_immutable
class Categoryfragment extends StatelessWidget {
  OnCategoryItemClick onCategoryItemClick;

  Categoryfragment({super.key, required this.onCategoryItemClick});
  static List<Category> categoryList = [];

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    categoryList = Category.getcategoryList(false);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Good Morning \n Here is Some News For You",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: hieght * 0.02),
          Expanded(
            child: Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      onCategoryItemClick(categoryList[index]);
                    },
                    child: CategoryItem(
                      category: categoryList[index],
                      index: index,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: hieght * 0.02);
                },
                itemCount: categoryList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

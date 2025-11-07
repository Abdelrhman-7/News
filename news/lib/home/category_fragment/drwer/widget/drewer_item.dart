import 'package:flutter/material.dart';

class DrewerItem extends StatelessWidget {
  String text;
  String iconName;

  DrewerItem({super.key, required this.text, required this.iconName});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.01,
        vertical: height * 0.01,
      ),
      child: Row(
        children: [
          SizedBox(width: width * 0.04),
          Image.asset(iconName),
          SizedBox(width: width * 0.02),
          Text(text, style: Theme.of(context).textTheme.bodyLarge),
          SizedBox(width: width * 0.02),
        ],
      ),
    );
  }
}

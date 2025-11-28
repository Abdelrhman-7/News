import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
          Image.asset(iconName, color: Theme.of(context).primaryColor),
          SizedBox(width: width * 0.02),
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(width: width * 0.02),
        ],
      ),
    );
  }
}

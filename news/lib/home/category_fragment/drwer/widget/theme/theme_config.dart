import 'package:flutter/material.dart';
import 'package:news/home/category_fragment/drwer/widget/theme/themeBottomSheet.dart';

// ignore: must_be_immutable
class ThemeConfig extends StatefulWidget {
  ThemeConfig({super.key, required this.text});
  String? text;

  @override
  State<ThemeConfig> createState() => _AppConfigState();
}

class _AppConfigState extends State<ThemeConfig> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    //var providertheme = Provider.of<AppThemeProvider>(context);
    return InkWell(
      onTap: () {
        showThemeBottomSheet(context);
      },

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Theme.of(context).primaryColor, width: 2),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.03,
          vertical: height * 0.01,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.001,
        ),
        child: Row(
          children: [
            Text(widget.text!),
            Spacer(),
            Icon(
              Icons.arrow_drop_down,
              size: 35,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}

void showThemeBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => Themebottomsheet(),
  );
}

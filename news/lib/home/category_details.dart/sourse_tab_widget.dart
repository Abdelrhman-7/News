import 'package:flutter/material.dart';
import 'package:news/AppStyle/AppTextStyle.dart';
import 'package:news/home/category_details.dart/widget/sourse_name.dart';
import 'package:news/home/news/news_widget.dart';
import 'package:news/l10n/app_localizations.dart';
import 'package:news/model/SourseResponse.dart';
import '../../core/colormanager.dart';

// ignore: must_be_immutable
class SourseTabWidget extends StatefulWidget {
  final List<Sources> sourseList;

  const SourseTabWidget({super.key, required this.sourseList});

  @override
  State<SourseTabWidget> createState() => _SourseTabWidgetState();
}

class _SourseTabWidgetState extends State<SourseTabWidget> {
  int selesctedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.home,
          style: AppTextStyle.bold20(context),
        ),
      ),

      body: DefaultTabController(
        length: widget.sourseList.length,
        child: Column(
          children: [

            TabBar(
              onTap: (index) {
                setState(() {
                  selesctedIndex = index;
                });
              },
              tabAlignment: TabAlignment.start,
              dividerColor: Colors.transparent,
              indicatorColor: Theme.of(context).splashColor,
              isScrollable: true,
              tabs: widget.sourseList.map((sourse) {
                return SourseName(
                  sourse: sourse,
                  isSelected:
                      selesctedIndex == widget.sourseList.indexOf(sourse),
                );
              }).toList(),
            ),
            Expanded(
              child: widget.sourseList.isEmpty
                  ? Center(
                child:CircularProgressIndicator(
                  color:Colormanager.gray,
                )
              )
                  : NewsWidget(source: widget.sourseList[selesctedIndex]),
            ),
          ],
        ),
      ),
    );
  }
}

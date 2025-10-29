import 'package:flutter/material.dart';
import 'package:news/Api/apiManager.dart';
import 'package:news/AppStyle/AppTextStyle.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:news/model/SourseResponse.dart';

class NewsWidget extends StatefulWidget {
  const NewsWidget({super.key, required this.source});
  final Sources source;

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return FutureBuilder<NewsResponse>(
      future: ApiManager.getSourseBySourseId(widget.source.id ?? ''),
      builder: (context, snapshot) {
        // 🔹 حالة التحميل
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
          );
        }

        // 🔹 حالة الخطأ في الاتصال
        if (snapshot.hasError) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: height * 0.09),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Something went wrong!",
                  style: AppTextStyle.bold20(context),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {}); // إعادة المحاولة
                  },
                  child: Text("Try Again", style: AppTextStyle.bold20(context)),
                ),
              ],
            ),
          );
        }

        // 🔹 تحقق من حالة السيرفر
        if (snapshot.data?.status == 'error') {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: height * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(snapshot.data?.message ?? "Unknown error"),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Try Again", style: AppTextStyle.bold20(context)),
                ),
              ],
            ),
          );
        }

        // 🔹 قائمة الأخبار
        var newsList = snapshot.data?.articles ?? [];

        if (newsList.isEmpty) {
          return Center(
            child: Text(
              "No news available",
              style: AppTextStyle.bold20(context),
            ),
          );
        }

        return ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(newsList[index].title ?? ''),
              subtitle: Text(newsList[index].description ?? ''),
            );
          },
        );
      },
    );
  }
}

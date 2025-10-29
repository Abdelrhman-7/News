import 'package:flutter/material.dart';
import 'package:news/Api/apiManager.dart';
import 'package:news/AppStyle/AppTextStyle.dart';
import 'package:news/core/colormanager.dart';
import 'package:news/home/category_details.dart/sourse_tab_widget.dart';
import 'package:news/model/SourseResponse.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails({super.key});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var _ = MediaQuery.of(context).size.width;
    return FutureBuilder<SourseResponse>(
      future: ApiManager.getSourse(),
      builder: (context, snapshot) {
        //todo:loding
        if (snapshot.connectionState == ConnectionState.waiting) {
          Center(child: CircularProgressIndicator(color: Colormanager.gray));

          //todo:error=>client
        } else if (snapshot.hasError) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: height * 0.09),
            child: Column(
              children: [
                Text(
                  "Someting Want Wrong",
                  style: AppTextStyle.bold20(context),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colormanager.blue,
                  ),
                  onPressed: () {
                    ApiManager.getSourse();
                    setState(() {});
                  },
                  child: Text("try Again", style: AppTextStyle.bold20(context)),
                ),
              ],
            ),
          );
        }
        //todo:server=>response => error

        if (snapshot.data?.status == 'error') {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: height * 0.02),
            child: Column(
              children: [
                Text(snapshot.data!.message!),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colormanager.blue,
                  ),
                  onPressed: () {
                    ApiManager.getSourse();
                    setState(() {});
                  },

                  child: Text("try Again", style: AppTextStyle.bold20(context)),
                ),
              ],
            ),
          );
        }
        //todo:server=>response=>success
        var sourcesList = snapshot.data?.sources ?? [];
        return SourseTabWidget(sourseList: sourcesList);
      },
    );
  }
}























































/*class SourceResponse {
  String status;
  List<>sources;
}

class Sourse{
  String id;
  String name;
  String langue;
  String contry;
  String url;
  String description;
  String category;
  Sourse({
  required this.id,
  required this.category,
  required this.contry,
  required this.description,
  required this.langue,
  required this.name,
  required this.url
  }); 

  Sourse.fromjson(Map<String , dynamic>json):this(
   id: json['id'],
   name: json['name'],
   langue: json['langue'],
   contry: json['contry'],
   url: json['url'],
   description: json['description'],
   category: json['category'],
   

  )

}
*/
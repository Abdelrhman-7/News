// ignore: unused_import
// ignore_for_file: unused_local_variable

import  'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news/Api/ApiConstant.dart';
import 'package:news/Api/endPoints.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:news/model/SourseResponse.dart';

class ApiManager {
  //https://newsapi.org/v2/top-headlines/sources?apiKey=ec57e46841614903bd452a2c00b67e24
  //https://newsapi.org/v2/everything?q=bitcoin&apiKey=ec57e46841614903bd452a2c00b67e24

  static Future<SourseResponse> getSourse() async {
    Uri url = Uri.https(ApiConstant.baseUrl, Endpoints.soirseApi, {
      'apiKey': ApiConstant.apiKey,
    });
    try {
      var response = await http.get(url);
      String responseBody = response.body; //String
      //String => json => object
      var json = jsonDecode(responseBody); //json
      return SourseResponse.fromJson(json); //object
    } catch (r) {
      rethrow;
    }
  }

  static Future<NewsResponse> getSourseBySourseId(String sourcesId) async {
    Uri uri = Uri.https(ApiConstant.baseUrl, Endpoints.newsApi, {
      'apiKey': ApiConstant.apiKey,
      'sources': sourcesId,
    });
    try {
      var response = await http.get(uri);
      String responseBody = response.body;
      var json = jsonDecode(responseBody);
      return NewsResponse.fromJson(json);
    } catch (r) {
      rethrow;
    }
  }
}

import 'package:flutter_app_demo2/data/models/api_respose_models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


abstract class ArticleRepository {
  Future<List<Articles>> getArticles();
}

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<List<Articles>> getArticles() async {
    var response = await http.get("https://newsapi.org/v2/top-headlines?sources=espn-cric-info&apiKey=4eb0794fcaee48cf9fa28063e9f03150");
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Articles> articles = ApiResultModel.fromJson(data).articles;
      return articles;
    } else {
      throw Exception();
    }
  }

}
import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;
  
  const NewsServices(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=43e3516d46b84368aa46f395760e3a1f&category=$category');

      Map<String, dynamic> jsonData = response.data; // للتحويل
      List<dynamic> articles = jsonData['articles']; // عشان اجيب الارتيكلز
      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);

        articleList.add(articleModel);
      }

      return articleList;
    } catch (e) {
      return [];
    }
  }
}

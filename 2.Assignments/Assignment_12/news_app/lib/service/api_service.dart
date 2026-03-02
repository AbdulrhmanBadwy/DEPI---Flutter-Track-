import 'package:dio/dio.dart';

import '../models/news_model.dart';

class ApiService {
  final _dio = Dio(BaseOptions(baseUrl: 'https://newsapi.org/v2'));

  Future<List<ArticleModel>> fetchArticles() async {
    final response = await _dio.get(
      '/top-headlines?country=us&category=business&apiKey=376156c8d19e4b6c882f4816347b03bc',
    );

    final articles = Articles.fromJson(response.data);
    return articles.articles;
  }
}
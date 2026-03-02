import 'package:dio/dio.dart';
import 'package:flutter_api/models/article_model.dart';

class ApiService {
  final _dio = Dio(BaseOptions(baseUrl: 'https://newsapi.org/v2'));

  Future<Articles> fetchArticles() async {
    final Response<dynamic> response = await _dio.get(
      '/top-headlines?country=us&category=business&apiKey=376156c8d19e4b6c882f4816347b03bc',
    );
    return Articles.fromJson(response.data);
  }
}

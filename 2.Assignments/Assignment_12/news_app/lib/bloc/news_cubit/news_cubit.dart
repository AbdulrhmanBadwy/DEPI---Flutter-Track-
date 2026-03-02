
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/service/api_service.dart';

part 'news_state.dart';
class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsState.initial());

  Future<void> loadNews() async {
    emit(state.copyWith(isLoading: true));

    try {
      final news = await ApiService().fetchArticles();
      emit(state.copyWith(
        news: news,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
part of 'news_cubit.dart';
@immutable
class NewsState {
  final List<ArticleModel> news;
  final bool isLoading;

  const NewsState({
    required this.news,
    required this.isLoading,
  });

  factory NewsState.initial() {
    return const NewsState(
      news: [],
      isLoading: true,
    );
  }

  NewsState copyWith({
    List<ArticleModel>? news,
    bool? isLoading,
  }) {
    return NewsState(
      news: news ?? this.news,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}


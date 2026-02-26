part of 'news_cubit.dart';

@immutable
 class NewsState {
  final List<NewsModel> news ;
  const NewsState({required this.news});

  factory NewsState.initial(){
    return NewsState(news: []);
  }

  NewsState copyWith({
    List<NewsModel>? news,
}){
    return NewsState(news:  news?? this.news);
}

}


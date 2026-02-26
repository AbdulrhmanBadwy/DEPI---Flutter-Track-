class NewsModel {
  final String newsTitle;
  final String category;
  final String description;
  final String createdBy;
  final String image;

  NewsModel({
    required this.newsTitle,
    required this.category,
    required this.description,
    required this.createdBy,
    required this.image,
  });

  static List<NewsModel> news = [
    NewsModel(
      newsTitle: 'See How the Forest is Helping Our World',
      category: 'Natural',
      description:
          'Forests are one of the most important natural resources that our planet possesses. '
          'Not only do they provide us with a diverse range of products such as timber, medicine, and food,'
          ' but they also play a vital role in mitigating climate change and maintaining the overall health of our'
          ' planet\'s ecosystems.'
          ' In this article, we will explore the ways in which forests are helping our world. ',
      createdBy: 'AbdulrhmanBadwy',
      image: 'assets/images/news_1.png',
    ),
    NewsModel(
      newsTitle: 'What Happen in The World With AI and It will Replace Us?!! ',
      category: 'Natural',
      description:
          'AI are one of the most important Technologies resources that our World possesses. '
          'Not only do they provide us with a diverse range of products such as timber, medicine, and food,'
          ' but they also play a vital role in mitigating climate change and maintaining the overall health of our'
          ' planet\'s ecosystems.'
          ' In this article, we will explore the ways in which forests are helping our world. '
          'AI are one of the most important Technologies resources that our World possesses. '
          'Not only do they provide us with a diverse range of products such as timber, medicine, and food,'
          ' but they also play a vital role in mitigating climate change and maintaining the overall health of our'
          ' planet\'s ecosystems.'
          ' In this article, we will explore the ways in which forests are helping our world. '
          'AI are one of the most important Technologies resources that our World possesses. '
          'Not only do they provide us with a diverse range of products such as timber, medicine, and food,'
          ' but they also play a vital role in mitigating climate change and maintaining the overall health of our'
          ' planet\'s ecosystems.'
          ' In this article, we will explore the ways in which forests are helping our world. ',
      createdBy: 'OmarBadwy',
      image: 'assets/images/news_2.jpg',
    ),
  ];
}

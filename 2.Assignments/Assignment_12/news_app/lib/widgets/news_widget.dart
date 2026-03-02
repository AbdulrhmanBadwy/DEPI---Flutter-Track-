import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/screens/news_details.dart';

class NewsWidget extends StatelessWidget {
  final ArticleModel item;
  const NewsWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        elevation: 0,
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ArticleDetailsScreen(model: item);
                },
              ),
            );
          },
          title: Text(
            item.title ?? '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            item.description ?? '',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(
                  item.urlToImage ??
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5D7hMC69lcznJ6FIhFiuw8eQbvtxA574LDw&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5D7hMC69lcznJ6FIhFiuw8eQbvtxA574LDw&s',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

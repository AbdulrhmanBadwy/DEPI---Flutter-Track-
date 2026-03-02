import 'package:flutter/material.dart';
import 'package:flutter_api/models/article_model.dart';

class ArticleDetailsScreen extends StatelessWidget {
  final ArticleModel model;
  const ArticleDetailsScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            //  Image background
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    model.urlToImage ??
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5D7hMC69lcznJ6FIhFiuw8eQbvtxA574LDw&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5D7hMC69lcznJ6FIhFiuw8eQbvtxA574LDw&s',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //  White card
            Positioned(
              top: MediaQuery.of(context).size.height * 0.28,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.title??'',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            model.author??'',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                      const SizedBox(width: 10),
                          Text(
                              '${model.publishedAt??DateTime.timestamp()}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              )
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        model.content??'',
                        style: const TextStyle(fontSize: 16, height: 1.5),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

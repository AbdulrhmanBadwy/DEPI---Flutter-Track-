import 'package:flutter/material.dart';
import 'package:flutter_api/models/article_model.dart';
import 'package:flutter_api/services/api_service.dart';

import 'article_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('News App', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Color(0xFFE9EEFA),
      ),
      body: FutureBuilder<Articles>(
        future: ApiService().fetchArticles(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              final data = snapshot.data;
              return ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15);
                },
                itemCount: data!.articles!.length,
                itemBuilder: (context, index) {
                  final model = data.articles![index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      height: 100,
                      margin: EdgeInsets.symmetric(horizontal: 10 ,),
                      decoration: BoxDecoration(
                        color: Color(0xFFE9EEFd),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  ArticleDetailsScreen(model: model),
                            ),
                          );
                        },
                        title: Text(
                          model.title.toString(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          model.description.toString(),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                model.urlToImage ??
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5D7hMC69lcznJ6FIhFiuw8eQbvtxA574LDw&s',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          }

          return Center(child: Text('there is no Data'));
        },
      ),
    );
  }
}

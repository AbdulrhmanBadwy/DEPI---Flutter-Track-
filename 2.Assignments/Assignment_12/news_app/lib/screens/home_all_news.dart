import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/news_cubit/news_cubit.dart';
import 'package:news_app/widgets/news_widget.dart';

class HomeAllNews extends StatefulWidget {
  const HomeAllNews({super.key});

  @override
  State<HomeAllNews> createState() => _HomeAllNewsState();
}

class _HomeAllNewsState extends State<HomeAllNews> {
  @override
  void initState() {
    super.initState();
    context.read<NewsCubit>().loadNews();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Color(0xFFE9EEFA),
      ),
      body: BlocBuilder<NewsCubit, NewsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.news.isEmpty) {
            return const Center(child: Text('No news found'));
          }

          return ListView.separated(

            itemCount: state.news.length,
            itemBuilder: (context, index) {
              return NewsWidget(item: state.news[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 8,);
          },
          );
        },
      ),
    );
  }
}

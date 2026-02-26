import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/screens/news_details.dart';

class NewsWidget extends StatelessWidget {
  final NewsModel item;
  const NewsWidget({super.key , required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return NewsDetails(item: item);
        }));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 8),
        margin: EdgeInsets.symmetric(vertical: 5 ),
        child: Card(
          elevation: 0,
          child: ListTile(
            title:Text(item.newsTitle) ,
            subtitle: Text(item.category),
            trailing: Image(image: AssetImage(item.image) , width: 120 , height: 120,),
          ),
        ),
      ),
    );
  }
}

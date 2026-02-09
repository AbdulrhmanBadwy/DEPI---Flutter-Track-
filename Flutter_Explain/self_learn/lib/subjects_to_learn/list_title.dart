import 'package:flutter/material.dart';

class ListTitle extends StatefulWidget {
  const ListTitle({super.key});

  @override
  State<ListTitle> createState() => _ListTitleState();
}

class _ListTitleState extends State<ListTitle> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Card(
            elevation: 5.5,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            color: Colors.white70,
            child: ListTile(
              onTap: (){
              },
              title: Text('Abdulrhman Badwy'),
              subtitle: Text('Flutter Developer'),
              leading: Icon(Icons.developer_board_off),
              trailing: Icon(Icons.slideshow),
            ),
          ),
          Card(
            elevation: 5.5,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            color: Colors.white70,
            child: ListTile(
              onTap: (){
              },
              title: Text('Abdulrhman Badwy'),
              subtitle: Text('Flutter Developer'),
              leading: Icon(Icons.developer_board_off),
              trailing: Icon(Icons.slideshow),

            ),
          ),

        ],
      ),
    );
  }
}

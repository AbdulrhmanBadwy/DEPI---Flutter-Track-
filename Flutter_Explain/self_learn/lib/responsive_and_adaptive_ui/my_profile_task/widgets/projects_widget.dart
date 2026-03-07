import 'package:flutter/material.dart';

class ProjectsWidget extends StatelessWidget {
  final Map<String , String> projects;
  const ProjectsWidget({super.key , required this.projects});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16 ),
      margin: EdgeInsets.only(bottom: 10 , right: 10),
      color: Color(0xFFECEBFE),
        child: Column(
          children: [
            Text(projects['title'] ?? 'Not Found' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
            Text(projects['description'] ?? 'Description not found'),
          ],
        ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomSectionWidget extends StatelessWidget {
  final String title ;
  final Color color;
  const CustomSectionWidget({super.key , required this.color,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity ,
        height: 200,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(16),
        ),

        child: Text('$title ' , style: TextStyle(color: Colors.white,fontSize: 30),),
      ),
    );
  }
}

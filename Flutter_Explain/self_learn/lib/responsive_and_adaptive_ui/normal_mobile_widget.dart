import 'package:flutter/material.dart';

class NormalMobileWidget extends StatelessWidget {
  const NormalMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        children: [
          Container(
            width: width*.9,
            height: height*.2,
            color: Colors.blue,
          ),

          Container(
            width: width*.9,
            height: height*.2,
            color: Colors.blue,
          ),

          Container(
            width: width*.9,
            height: height*.2,
            color: Colors.blue,
          ),

          Container(
            width: width*.5,
            height: height*.2,
            color: Colors.amber,
          ),

        ],
      ),
    );
  }
}

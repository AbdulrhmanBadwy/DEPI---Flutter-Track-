import 'package:flutter/material.dart';

class TabletWidget extends StatelessWidget {
  const TabletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          width: width*.3,
          height: height*.2,
          color: Colors.blue,
        ),

        Container(
          width: width*.3,
          height: height*.2,
          color: Colors.blue,
        ),

        Container(
          width: width*.3,
          height: height*.2,
          color: Colors.blue,
        ),

        Container(
          width: width*.3,
          height: height*.2,
          color: Colors.blue,
        ),
        Container(
          width: width*.5,
          height: height*.5,
          color: Colors.amber,
        ),

      ],
    );
  }
}

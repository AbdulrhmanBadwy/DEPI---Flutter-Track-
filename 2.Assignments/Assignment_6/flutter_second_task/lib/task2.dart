
import 'package:flutter/material.dart';
import 'package:flutter_second_task/task1.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen2(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 45),
            width: 400,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 12,
                ),
              ]
            ),

            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.purple.shade800,
                      ),
                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.purple.shade600,
                      ),
                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.purple.shade400,
                      ),
                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.purple.shade200,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.green.shade800,
                      ),
                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.green.shade600,
                      ),
                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.green.shade400,
                      ),
                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.green.shade200,
                      ),
                    ],
                  ),
                  Column(
                    children: [

                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.blue.shade800,
                      ),
                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.blue.shade600,
                      ),
                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.blue.shade400,
                      ),
                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.blue.shade200,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 400,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 12,
                  ),
                ]
            ),
            child: Container(
              padding: EdgeInsets.all(7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.purple.shade800,
                      ),
                      Container(
                        width: 80,
                        height: 40,
                        color: Colors.purple.shade600,
                      ),
                      Container(
                        width: 50,
                        height: 40,
                        color: Colors.purple.shade400,
                      ),
                      Container(
                        width: 30,
                        height: 40,
                        color: Colors.purple.shade200,
                      ),

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.green.shade800,
                      ),
                      Container(
                        width: 80,
                        height: 40,
                        color: Colors.green.shade600,
                      ),
                      Container(
                        width: 50,
                        height: 40,
                        color: Colors.green.shade400,
                      ),
                      Container(
                        width: 30,
                        height: 40,
                        color: Colors.green.shade200,
                      ),

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 110,
                        height: 40,
                        color: Colors.blue.shade800,
                      ),
                      Container(
                        width: 80,
                        height: 40,
                        color: Colors.blue.shade600,
                      ),
                      Container(
                        width: 50,
                        height: 40,
                        color: Colors.blue.shade400,
                      ),
                      Container(
                        width: 30,
                        height: 40,
                        color: Colors.blue.shade200,
                      ),

                    ],
                  )

                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 400,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 12,
                  ),
                ]
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 26,
                        height: 165,
                        color: Colors.purple.shade800,
                      ),
                      Container(
                        width: 26,
                        height: 135,
                        color: Colors.purple.shade600,
                      ),
                      Container(
                        width: 26,
                        height: 105,
                        color: Colors.purple.shade400,
                      ),
                      Container(
                        width: 26,
                        height: 75,
                        color: Colors.purple.shade200,
                      ),

                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 26,
                        height: 165,
                        color: Colors.green.shade800,
                      ),
                      Container(
                        width: 26,
                        height: 135,
                        color: Colors.green.shade600,
                      ),
                      Container(
                        width: 26,
                        height: 105,
                        color: Colors.green.shade400,
                      ),
                      Container(
                        width: 26,
                        height: 75,
                        color: Colors.green.shade200,
                      ),

                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 26,
                        height: 165,
                        color: Colors.blue.shade800,
                      ),
                      Container(
                        width: 26,
                        height: 135,
                        color: Colors.blue.shade600,
                      ),
                      Container(
                        width: 26,
                        height: 105,
                        color: Colors.blue.shade400,
                      ),
                      Container(
                        width: 26,
                        height: 75,
                        color: Colors.blue.shade200,
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 400,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 12,
                  ),
                ]
            ),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      width: 28,
                      height: 160,
                      color: Colors.purple.shade800,
                    ),
                    Container(
                      width: 28,
                      height: 160,
                      color: Colors.purple.shade600,
                    ),
                    Container(
                      width: 28,
                      height: 160,
                      color: Colors.purple.shade400,
                    ),
                    Container(
                      width: 28,
                      height: 160,
                      color: Colors.purple.shade200,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 28,
                      height: 160,
                      color: Colors.green.shade800,
                    ),
                    Container(
                      width: 28,
                      height: 160,
                      color: Colors.green.shade600,
                    ),
                    Container(
                      width: 28,
                      height: 160,
                      color: Colors.green.shade400,
                    ),
                    Container(
                      width: 28,
                      height: 160,
                      color: Colors.green.shade200,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 28,
                      height: 160,
                      color: Colors.blue.shade800,
                    ),
                    Container(
                      width: 28,
                      height: 160,
                      color: Colors.blue.shade600,
                    ),
                    Container(
                      width: 28,
                      height: 160,
                      color: Colors.blue.shade400,
                    ),
                    Container(
                      width: 28,
                      height: 160,
                      color: Colors.blue.shade200,
                    ),
                  ],
                ),

              ],
            ),
          ),
          ),

        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Project'),
          backgroundColor: Colors.red,
          centerTitle: true,),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 12 , vertical: 16),
          height: 200,
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 12,vertical: 16),
            color: Colors.grey.shade400,
            shadowColor: Colors.black,

            child: Row(
              children:
              [
                // Image
                  // Assets
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/Avatar.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                      alignment: Alignment.topRight, // 👈 يطلع الجزء اللي فوق
                    ),
                  ),

                ),
                // Column( Name , Title , Bio )
                SizedBox(width: 20, height: 20,),


                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name
                    Text(
                        'Abdulrhman Badwy',
                    ),

                   SizedBox(
                     width: 140,
                     child: Divider(
                       thickness: 1,
                       color: Colors.black,
                     ),
                   ),
                    // Title
                    Text(
                        'Flutter Developer',
                      textAlign: TextAlign.center,
                    ),

                    // Bio
                    Text(
                        'Based on Sharqia',
                    ),

                    SizedBox(
                     width: 120,
                     child: Divider(
                       thickness: 1,
                       color: Colors.black,
                     ),
                   ),

                    SizedBox(
                      width: 100,
                      height: 20,
                      child: Text(
                          'Id: 203050',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}

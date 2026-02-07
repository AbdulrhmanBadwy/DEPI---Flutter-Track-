
# Task 1 

# Task 2 

![[Pasted image 20260201200910.png]]

```dart

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  void _openLink(String url) async{
    final uri = Uri.parse(url);

    if(await canLaunchUrl(uri)){
      await launchUrl(uri,mode: LaunchMode.externalApplication);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              padding: EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 12,
                    ),
                  ]
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipOval(
                       child: Image.asset(
                         'assets/images/profile.jpg',
                         width: 200,
                         height: 200,
                         fit: BoxFit.cover,
                         alignment: Alignment.topCenter,
                       ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        ' Abdulrhman Badwy',
                        style: TextStyle(
                          fontFamily: 'hamah',
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Text(
                        'Software Engineer | Flutter Developer',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Projects',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '17',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Following',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                                '159',
                              style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                                'Followers',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                                '205',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Container(
                      width: 320,
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        'I am an ambitious person who loves learning and  skills and improve my abilities in different fields, '
                            'believing that hard work and consistency are the true keys to success and achieving '
                            'goals.',
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                          color: Colors.grey.shade700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const FaIcon(
                              FontAwesomeIcons.facebook,
                            color: Color(0xFF1877F2),
                            size: 40,
                          ),
                          onPressed: (){
                            _openLink('https://www.facebook.com/almeshmasre');
                          },
                        ),
                        IconButton(
                          icon: const FaIcon(
                              FontAwesomeIcons.x,
                              color: Colors.black,
                            size: 40,
                          ),
                          onPressed: (){
                            _openLink('https://x.com/almeshmasre');
                          },
                        ),
                        IconButton(
                          icon: const FaIcon(
                              FontAwesomeIcons.github,
                              color: Colors.black,
                            size: 40,
                          ),
                          onPressed: (){
                            _openLink('https://github.com/AbdulrhmanBadwy'); 
                          },
                        ),
                        IconButton(
                          icon: const FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Color(0xFFE4405F),
                            size: 40,
                          ),
                          onPressed: (){
                            _openLink('https://www.instagram.com/iabdulrhmanbadwy/');
                          },
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: ElevatedButton(
                        child: Text('View Profile'),
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 60),
                          textStyle:  TextStyle(
                              fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


```
# Task 3

![[Pasted image 20260201154634.png]]

![[Pasted image 20260201141700.png]]

```dart
  
  
import 'package:flutter/cupertino.dart';  
import 'package:flutter/material.dart';  
  
void main(){  
  runApp(const MyApp());  
}  
  
class MyApp extends StatelessWidget {  
  const MyApp({super.key});  
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: HomeScreen(),  
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
```
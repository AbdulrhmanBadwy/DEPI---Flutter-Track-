
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


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:self_learn/responsive_and_adaptive_ui/resposive_implement.dart';
// import 'package:self_learn/navigator_practical/routing/router_generator.dart';
// import 'package:self_learn/navigator_practical/routing/app_route.dart';
// import 'package:self_learn/navigator_practical/routing/router_generator.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  ThemeMode currentTheme = ThemeMode.light;

  toggleTheme() {
    setState(() {
      currentTheme =
      ((currentTheme == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
          home: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              title: const Text('My Profile'),
              backgroundColor: Colors.red,
              elevation: 0,
            ),
            body: ResponsiveImplement(),
            ),
          ),
      );
  }

}
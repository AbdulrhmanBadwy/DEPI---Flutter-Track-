import 'package:flutter/material.dart';
import 'package:self_learn/responsive_and_adaptive_ui/my_profile_task/models/profile_model.dart';
import 'package:self_learn/responsive_and_adaptive_ui/my_profile_task/widgets/mobile_widget.dart';
// import 'package:self_learn/navigator_parctical/routing/router_generator.dart';
// import 'package:self_learn/navigator_parctical/routing/app_route.dart';
// import 'package:self_learn/navigator_parctical/routing/router_generator.dart';

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
    return MaterialApp(
        home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: const Text('My Profile'),
            backgroundColor: Colors.red,
            elevation: 0,
          ),
          body: MobileWidget(profileModel: profileModel),
        ),
    );
  }

}
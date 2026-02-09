import 'package:flutter/material.dart';
import 'package:self_learn/routing/app_route.dart';
import 'package:self_learn/screens/first_screen.dart';
import 'package:self_learn/screens/second_screen.dart';
import 'package:self_learn/screens/third_screen.dart';

class RouterGenerator {
  static Route generateRoute(RouteSettings settings) {
    final arg = settings.arguments;

    switch (settings.name) {
      case AppRoutes.firstScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: AppRoutes.firstScreen),
          builder: (context) {
            return FirstScreen();
          },
        );
      case AppRoutes.secondScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: AppRoutes.secondScreen),

          // Send argument on  argument
          // settings: RouteSettings(arguments: arg),

          // Send argument on Constructor
          builder: (context) =>
              SecondScreen(productDetails: arg as ProductDetails),
        );
      case AppRoutes.thirdScreen:
        return MaterialPageRoute(
            settings: RouteSettings(name: AppRoutes.thirdScreen),

            builder: (context) => ThirdScreen()
        );

      default:
        return MaterialPageRoute(builder: (context)=> Scaffold(
          body: Center(child: Text('No Route found'),),
        ));
    }
  }
}

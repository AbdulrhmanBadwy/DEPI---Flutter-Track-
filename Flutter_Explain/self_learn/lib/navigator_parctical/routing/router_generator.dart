import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:self_learn/navigator_parctical/routing/app_route.dart';
import 'package:self_learn/navigator_parctical/screens/first_screen.dart';
import 'package:self_learn/navigator_parctical/screens/second_screen.dart';
import 'package:self_learn/navigator_parctical/screens/third_screen.dart';

class RouterGenerator{
  static GoRouter mainRoutingInOurAPP = GoRouter(
    errorBuilder: (context , state ) {
      return Scaffold(
        body: Center(child: Text('This Route Not found'),),
      );
    },
      initialLocation: AppRoutes.firstScreen,
  routes: [
    GoRoute(
      name: AppRoutes.firstScreen,
      path:AppRoutes.firstScreen,
      builder: (context , state ) => const FirstScreen(),
    ),
    GoRoute(
      name: AppRoutes.secondScreen,
      path: AppRoutes.secondScreen,
      builder: (context , state ) {
        ProductDetails productDetails = state.extra as ProductDetails;
        return  SecondScreen(productDetails:productDetails );
      },
    ),
    GoRoute(
      name: AppRoutes.thirdScreen,
      path: AppRoutes.thirdScreen,
      builder: (context,state) {
        return ThirdScreen();
      }
    ),
  ]);
}
import 'package:flutter/material.dart';
import 'package:food_devlivery_app/screens/cart_screen.dart';
import 'package:food_devlivery_app/screens/home_screen.dart';
import 'package:food_devlivery_app/screens/profile_screen.dart';


class ControllerPage extends StatefulWidget {
  const ControllerPage({super.key});

  @override
  State<ControllerPage> createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {

  int _currentIndex = 0 ;

  List<Widget>body = [
    HomeScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.red.shade200,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;

          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

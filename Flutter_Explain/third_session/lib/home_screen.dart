import 'package:flutter/material.dart';
import 'package:third_session/screens/cart_screen.dart';
import 'package:third_session/screens/product_screen.dart';
import 'package:third_session/screens/profile_screen.dart';
import 'package:third_session/screens/whilst_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<String> titles = [
    'Home Screen',
    'Cart Screen',
    'Wishlist Screen',
    'Profile Screen',
  ];

  List<Widget> body = [
    ProductScreen(),
    CartScreen(),
    WishlistScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Smart Shop'),
        centerTitle: true,
        // leading: Text('Hello'),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Clicked on Cart Icon!');
            },
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          // IconButton(
          //   onPressed: () {
          //     print('Clicked on Cart Icon!');
          //   },
          //   icon: Icon(Icons.shopping_cart_outlined),
          // ),
        ],
      ),

      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        enableFeedback: true,
        onTap: (int index) {

          setState(() {
            _currentIndex = index;
          });
          debugPrint('My current index $_currentIndex');
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_rounded),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Profile'),
        ],
      ),
    );
  }
}


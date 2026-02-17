import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:self_learn/navigator_parctical/routing/app_route.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 3,
        shadowColor: Colors.black,
        title: const Text(
          'First Screen',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 40,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'First Screen',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade100,
              ),
              onPressed: () {
                GoRouter.of(context).pushNamed(
                  AppRoutes.secondScreen,
                  extra: ProductDetails(
                    id: 1,
                    title: 'Product 1',
                    description: 'This is first item',
                  ),
                );
              },
              child: Text('Next', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetails {
  int id;
  String title;
  String description;
  ProductDetails({
    required this.id,
    required this.title,
    required this.description,
  });
}

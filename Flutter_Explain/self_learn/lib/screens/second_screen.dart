import 'package:flutter/material.dart';
import 'package:self_learn/routing/app_route.dart';
import 'package:self_learn/screens/first_screen.dart';

class SecondScreen extends StatelessWidget {
  final ProductDetails productDetails;
   const SecondScreen({super.key, required this.productDetails});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 3,
        shadowColor: Colors.black,
        backgroundColor: Colors.orange,
        title: Text(
          'Second Screen',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 40,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Second Screen',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: (){
               Navigator.pushNamedAndRemoveUntil(context, AppRoutes.thirdScreen,(route){
                 return route.settings.name== AppRoutes.firstScreen;
               });
              },
              child: Text('Next'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: (){
               Navigator.pop(context);
              },
              child: Text('Back'),
            ),
            
            Text('${productDetails.description} \n ${productDetails.title} \n ${productDetails.id}'),

          ],
        ),
      ),
    );
  }
}

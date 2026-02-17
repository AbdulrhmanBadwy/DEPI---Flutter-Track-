import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.white70,
          elevation: 3,
          shadowColor: Colors.black,
          title: const Text(
            'Third Screen',
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
              const Text(
                'Third Screen',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade100,
                ),
                onPressed: (){
                  context.pop();
                },
                child: Text('Back' , style: TextStyle(color: Colors.black),),
              )
            ],
          ),
        )
    );
  }
}

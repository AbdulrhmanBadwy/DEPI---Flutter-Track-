import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: null,
            style: TextButton.styleFrom(
              backgroundColor: Colors.orange,
            ),
            child: Text('EleveatedButton'),
          ),
          TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              // foregroundColor: Colors.orange,
              textStyle: TextStyle(
                color: Colors.white70,
              )
            ),
            child: Text('TextButton'),
          ),
        ],
      ),
    );
  }
}

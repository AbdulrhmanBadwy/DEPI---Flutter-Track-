import 'package:flutter/material.dart';

class CustomWidget extends StatefulWidget {
  final VoidCallback onToggle;
  const CustomWidget({super.key ,required this.onToggle});

  @override
  State<CustomWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          children: [
            Text('Abdulrhman Badwy', style: Theme.of(context).textTheme.bodyLarge,),
            ElevatedButton(
              onPressed: () {
                widget.onToggle();
              },
              child: Text('ChangeTheme'),
            ),
          ],
        ),
      ),
    );
  }
}

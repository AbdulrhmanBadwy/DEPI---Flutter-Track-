import 'package:flutter/material.dart';

class FlutterAnimation extends StatefulWidget {
  const FlutterAnimation({super.key});

  @override
  State<FlutterAnimation> createState() => _FlutterAnimationState();
}

class _FlutterAnimationState extends State<FlutterAnimation> {
  bool isVisible = true;
  bool isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: isVisible ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastEaseInToSlowEaseOut,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'the text will appear and not appear',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: Text(isVisible ? 'Hide Text' : 'Show Text'),
              ),

              const SizedBox(height: 100),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInBack,
                width: isExpanded ? 300 : 150,
                height: isExpanded ? 300 : 150,
                decoration: BoxDecoration(
                  color: isExpanded ? Colors.purple : Colors.purple.shade100,
                  borderRadius: BorderRadius.circular(isExpanded ? 100 : 12),
                ),
                child: Center(
                  child: Text(
                    isExpanded ? 'Expanded' : 'Tap me!',
                    style: TextStyle(
                      fontSize: isExpanded? 22 : 16,
                      fontWeight: FontWeight.bold,
                      color: isExpanded? Colors.white: Colors.purple,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(onPressed: (){
                setState(() {
                  isExpanded = !isExpanded;
                });
              }, child: Text(isExpanded?'UnExpand' : 'Expand'))
            ],
          ),
        ),
      ),
    );
  }
}

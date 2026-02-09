import 'package:flutter/material.dart';

class BuilderCartSummary extends StatelessWidget {
  final String title;
  final double value ;
  bool isBold = false;
   BuilderCartSummary({super.key , required this.title,required this.value , required this.isBold});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title , style: TextStyle(fontSize: 20 , color: Colors.grey),),
        Text(
          '\$${value.toStringAsFixed(2)}',
          style: TextStyle(
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            fontSize: 20,
            color: Colors.black
          ),
        ),
      ],
    ); ;
  }
}

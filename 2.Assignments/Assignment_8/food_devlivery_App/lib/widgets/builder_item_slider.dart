import 'package:flutter/material.dart';
import 'package:food_devlivery_app/models/slider_item_model.dart';

class BuilderItemSlider extends StatelessWidget {
  final SliderItemModel item ;
  const BuilderItemSlider({super.key , required this.item});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              item.image,
              fit: BoxFit.fill,
            ),
          ),
          Text(item.text),
        ],
      ),
    );
  }
}



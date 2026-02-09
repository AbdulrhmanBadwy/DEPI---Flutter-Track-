import 'package:flutter/material.dart';
import 'package:food_devlivery_app/models/view_item_model.dart';
import 'package:food_devlivery_app/screens/food_details_screen.dart';

class BuilderItemListView extends StatelessWidget {
  final ViewItemModel itemModel;
  const BuilderItemListView({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return FoodDetailsScreen(itemModel: itemModel);
            },
          ),
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 3,
        shadowColor: Colors.black,
        child: ListTile(
          minTileHeight: 50,
          leading: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(itemModel.image ?? 'NULL'),
                fit: BoxFit.cover,
              ),
            ),
            child: Image.asset(itemModel.image ?? 'Null'),
          ),
          title: Text(
            itemModel.name ?? 'nullName',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900 , fontSize: 20),
          ),
          subtitle: Text(
            itemModel.description ?? 'Null Description',
            style: TextStyle(color: Colors.red , fontSize: 10),
          ),
          trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffFCECED),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text('Add to Cart', style: TextStyle(color: Colors.black)),
          ),
        ),
      ),
    );
  }
}

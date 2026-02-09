import 'package:flutter/material.dart';
import 'package:food_devlivery_app/models/view_item_model.dart';
import 'package:food_devlivery_app/screens/food_details_screen.dart';

class BuilderItemGridView extends StatelessWidget {
  final ViewItemModel itemGrid;
  const BuilderItemGridView({super.key, required this.itemGrid});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return FoodDetailsScreen(itemModel: itemGrid);
        }));
      },
      child: Container(
        width: 300,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)],
        ),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: 100,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      itemGrid.image ?? 'NotFound',
                    ),
                    fit: BoxFit.cover
                  ),
                ),

              ),
            ),

            Text(
              itemGrid.name ?? 'NUll',
              style: TextStyle(color:Colors.black,fontWeight: FontWeight.w800),
            ),
            Text(itemGrid.description ?? 'Null' , style: TextStyle(
              color: Colors.black54
            ),),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFCECED),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Add To Cart', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

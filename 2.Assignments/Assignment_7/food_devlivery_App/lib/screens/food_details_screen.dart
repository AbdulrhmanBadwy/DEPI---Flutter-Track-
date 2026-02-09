import 'package:flutter/material.dart';
import 'package:food_devlivery_app/models/view_item_model.dart';

class FoodDetailsScreen extends StatefulWidget {
  final ViewItemModel itemModel;
  const FoodDetailsScreen({super.key, required this.itemModel});

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  List<IconData> icons = [
    Icons.lunch_dining,
    Icons.bakery_dining,
    Icons.eco,
    Icons.local_pizza,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First Image
          Container(
            margin: EdgeInsets.only(top: 30,bottom: 0 , right: 16 , left: 16),
            child: Stack(
              alignment: Alignment(.8, -.7),
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,),
                  width: 350,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(
                        widget.itemModel.image ?? 'NotFoundImage',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  spacing: 170,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        color: Colors.black,
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        color: Colors.black,
                        onPressed: () {
                          setState(() {
                            widget.itemModel.isFavourite =
                                !widget.itemModel.isFavourite;
                          });
                        },
                        icon: widget.itemModel.isFavourite
                            ? Icon(Icons.favorite, color: Colors.red)
                            : Icon(Icons.favorite_outline),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Name and Price 
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.itemModel.name ?? 'NotFound',
                  style: TextStyle(
                      color: Colors.black,
                    fontSize: 20
                  ),
                ),
                Text(
                  widget.itemModel.price ?? 'NullPrice',
                  style: TextStyle(
                      color: Colors.red,
                    fontSize: 20
                  ),
                ),
              ],
            ),
          ),
          // Icons 
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              spacing: 30,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12 , vertical: 8),
                  width: 75,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3,
                        offset: Offset.zero
                      )
                    ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.star,color: Colors.yellow,),
                      Text('${widget.itemModel.reviews}' , style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                      ),),
                      Text('128 reviews' , style: TextStyle(fontSize: 8 , color: Colors.grey),),
                    ],
                  )
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12 , vertical: 8),
                  width: 75,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3,
                        offset: Offset.zero
                      )
                    ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.watch_later_outlined,color: Colors.red,),
                      Text('${widget.itemModel.time}' , style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                      ),),
                      Text('MINS' , style: TextStyle(fontSize: 8 , color: Colors.grey),),
                    ],
                  )
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12 , vertical: 8),
                  width: 75,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3,
                        offset: Offset.zero
                      )
                    ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.local_fire_department,color: Colors.red.shade700,),
                      Text('${widget.itemModel.kCalory}' , style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                      ),),
                      Text('KCAL' , style: TextStyle(fontSize: 8 , color: Colors.grey),),
                    ],
                  )
                ),
              ],
            ),
          ),
          // Description
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Description', style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                ),),
                Text(widget.itemModel.description?? 'Null' , style: TextStyle(
                  color: Colors.grey,
                ),),
                Text('See More' , style: TextStyle(color: Colors.red),)
              ],
            ),
          ),
          // Ingredients
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
              children: [
                Text('Ingredients' , style: TextStyle(fontSize: 20 , color: Colors.black),),
                Wrap(
                  spacing: 10,
                  children: List.generate(widget.itemModel.ingredients!.length, (index){
                    return  Container(
                      margin: EdgeInsets.only(bottom: 15),
                      padding: EdgeInsets.all(10),
                      width:110,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 1,
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Icon(icons[index]),
                          Text(widget.itemModel.ingredients![index]),
                        ],
                      ),
                    );
                  }),


                )
              ],
            ),
          ),
          // Buttons
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffE53935),
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 6,
              ),
              child: Text(
                'Add to Cart',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

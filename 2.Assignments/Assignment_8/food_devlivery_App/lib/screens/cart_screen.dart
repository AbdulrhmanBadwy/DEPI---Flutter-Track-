import 'package:flutter/material.dart';
import 'package:food_devlivery_app/models/cart_item_model.dart';
import 'package:food_devlivery_app/widgets/builder_cart_item.dart';
import 'package:food_devlivery_app/widgets/builder_cart_summary.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double get subTotal {
    return cartItems.fold(
      0,
          (sum, item) => sum + item.price * item.counter,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 220,
            child: ListView.builder(
              padding: EdgeInsets.only(bottom: 20),
              itemCount: cartItems.length,
              itemBuilder: (context,index){
              final item  = cartItems[index];
              return BuilderCartItem(itemModel: item ,
                onAdd: (){
                setState(() {
                  item.counter++;
                } );
              },
                onRemove: (){
                setState(() {
                  item.counter--;
                  if(item.counter < 0 ) item.counter = 0 ;
                });
                },
              );
            }),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 25),
            child: Column(
              spacing: 10,
              children: [
                BuilderCartSummary(title: 'SubTotal', value: subTotal, isBold: true),
                BuilderCartSummary(title: 'Delivery Fee', value: .2*subTotal, isBold: true),
                BuilderCartSummary(title: 'SubTotal', value:(.2*subTotal)/2, isBold: true),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 150,
            child: Column(
              spacing: 15,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total ' , style: TextStyle(fontSize: 25),),
                      Text('${subTotal+ (subTotal*.2) + ((subTotal*.2)/2)}' , style: TextStyle(fontSize: 25),),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Checkout' , style: TextStyle(color: Colors.white , fontSize: 20),),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

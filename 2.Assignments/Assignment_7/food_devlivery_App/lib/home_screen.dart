import 'package:flutter/material.dart';
import 'package:food_devlivery_app/gridveiw_item_model.dart';
import 'package:food_devlivery_app/slider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
            'Food Delivery',
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined)),
        ],
      ),
      body: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search Bar
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 4),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(252,236,237,1),
                hintText: 'Search for food',
                prefixIcon: Icon(Icons.search_outlined ,color: Colors.red,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          // Carousel Slider
          CarouselSlider(
            items: sliderItems.map((item){
              return _buildItemSlider(item);
            }).toList(),
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16/9,
              enableInfiniteScroll: false,
            ),
          ),
          // Featured Items
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                spacing: 17,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Featured Items',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(252,236,237,1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('List View'),
                        Container(
                          alignment: Alignment.center,
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text('Grid View',style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ),
          //Grid View
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: .70,
                ),
                itemCount: gridItems.length,
                itemBuilder: (context,index){
                  final item = gridItems[index];
                  return _buildItemGridView(item);
                }
            ),
          ),
          //

        ],
      ),
      // Buttom Naviagtion
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemSlider(SliderItemModel item){
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

  Widget _buildItemGridView(GridViewItemModel itemGrid){
    return Container(
      width: 300,
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10 ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5,
          ),
        ]
      ),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
                itemGrid.image,
              fit: BoxFit.fill,
            ),
          ),

          Text(itemGrid.title,style: TextStyle(fontWeight: FontWeight.w800),),
          Text(itemGrid.description),


          ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFCECED),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              child: Text('Add To Cart')),
        ],

      ),
    );
  }
}

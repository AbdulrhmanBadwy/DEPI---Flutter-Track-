import 'package:flutter/material.dart';
import 'package:food_devlivery_app/models/view_item_model.dart';
import 'package:food_devlivery_app/models/slider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:food_devlivery_app/widgets/builder_item_list_view.dart';
import 'package:food_devlivery_app/widgets/builder_item_slider.dart';

import '../widgets/builder_item_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isGrid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Delivery'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: Column(

        spacing: 7,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search Bar
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(252, 236, 237, 1),
                hintText: 'Search for food',
                prefixIcon: Icon(Icons.search_outlined, color: Colors.red),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          // Carousel Slider
          CarouselSlider(
            items: sliderItems.map((item) {
              return BuilderItemSlider(item: item);
            }).toList(),
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16 / 9,
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
                Text('Featured Items', style: TextStyle(fontSize: 20)),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(252, 236, 237, 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: isGrid? Alignment.centerRight:Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          width: 150,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){
                                setState(() {
                                  isGrid = false;
                                });
                            },
                            child: Center(
                              child: Text(
                                  'List View',
                                style: TextStyle(
                                  color: isGrid?Colors.black:Colors.white,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Center(
                              child: Text(
                                'Grid View',
                                style: TextStyle(
                                    color: isGrid?Colors.white:Colors.black,
                                ),
                              ),
                            ),
                            onTap: (){
                              setState(() {
                                isGrid=true;

                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: isGrid
                ? GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: .70,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return BuilderItemGridView(itemGrid: item);
                  },
                )
                : ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return BuilderItemListView(itemModel: item);
                  },
                ),
          ),
        ],
      ),
    );
  }
}

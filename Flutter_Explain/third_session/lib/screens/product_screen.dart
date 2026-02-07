import 'package:flutter/material.dart';
import 'package:third_session/product_item_mode.dart';


class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  static const List<String> titles = ['All', 'Featured', 'New'];

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        // Search Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              // helperText: 'Password should contains 8 characters and above.',
              // labelText: 'Write your search here',
              prefixIcon: Icon(Icons.search, color: Colors.black),
              // suffixIcon: Icon(Icons.search, color: Colors.black),
            ),
          ),
        ),
        // Filters
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            spacing: 12,
            children: List<Widget>.generate(ProductScreen.titles.length, (index) {

              return _buildFilterWidget(ProductScreen.titles[index]);
            }),

          ),
        ),

        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16),
            // scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              childAspectRatio: 0.82,
            ),
            itemCount: ProductItemModel.listOfItems.length,
            itemBuilder: (context, index) {
              final item = ProductItemModel.listOfItems[index];
              return _buildProductItem(item);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProductItem(ProductItemModel item) {
    return SizedBox(
      height: 240,
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 173,
                width: 173,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(image: AssetImage(item.image)),
                ),
                // child: Image.asset(item.image),
              ),
              Text(item.name),
              Text('\$${item.price}'),
            ],
          ),

          IconButton(
            onPressed: () {
              setState(() {

                item.isFavourite = !item.isFavourite;
              });
            },
            icon: item.isFavourite
                ? Icon(Icons.favorite, color: Colors.red)
                : Icon(Icons.favorite_outline_rounded),
          ),
        ],
      ),
    );
  }

  // Function
  Widget _buildFilterWidget(String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}

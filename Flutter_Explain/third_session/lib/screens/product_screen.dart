import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_session/cubits/products_cubit/products_cubit.dart';
import 'package:third_session/product_item_mode.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  static const List<String> titles = ['All', 'Featured', 'New'];

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsCubit>().loadData();
  }

  @override
  Widget build(BuildContext context) {
    // Don't write any logic code here!
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
            children: List<Widget>.generate(ProductScreen.titles.length, (
              index,
            ) {
              return _buildFilterWidget(ProductScreen.titles[index]);
            }),
          ),
        ),

        Expanded(
          child: BlocListener<ProductsCubit, ProductsState>(
            listener: (context, state) {
              if (state.isItemAddedToFavourite) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Item is added to favourite'),
                    backgroundColor: Colors.green,
                  ),
                );
              }

              if (state.isItemRemovedToFavourite) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Item is removed to favourite'),
                    backgroundColor: Colors.red,
                  ),
                );
              }

            },
            child: BlocBuilder<ProductsCubit, ProductsState>(
              buildWhen: (prev, current) {
                return prev.listOfProducts != current.listOfProducts;
              },
              builder: (context, state) {
                if (state.listOfProducts.isNotEmpty) {
                  return GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    // scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.82,
                    ),
                    itemCount: state.listOfProducts.length,
                    itemBuilder: (context, index) {
                      final item = state.listOfProducts[index];
                      return _buildProductItem(item);
                    },
                  );
                }
                return Center(child: Text('There is no Items in the list'));
              },
            ),
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
          BlocBuilder<ProductsCubit, ProductsState>(
            buildWhen: (previousState, currentState) {
              return previousState.favourites != currentState.favourites;
            },
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  context.read<ProductsCubit>().toggleFavourite(item.id);
                },
                icon: state.favourites.contains(item.id)
                    ? Icon(Icons.favorite, color: Colors.red)
                    : Icon(Icons.favorite_outline_rounded),
              );
            },
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

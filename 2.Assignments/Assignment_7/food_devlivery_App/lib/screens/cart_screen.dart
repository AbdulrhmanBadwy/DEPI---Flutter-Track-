import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_devlivery_app/blocs/cart_cubit/cart_cubit.dart';
import 'package:food_devlivery_app/widgets/builder_cart_item.dart';
import 'package:food_devlivery_app/widgets/builder_cart_summary.dart';

import '../blocs/cart_cubit/cart_state.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CartCubit>().loadCart();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          return Column(
            children: [
              ///  Cart Items
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 20),
                  itemCount: state.listOfCartItem.length,
                  itemBuilder: (context, index) {
                    final item = state.listOfCartItem[index];

                    return BuilderCartItem(
                      itemModel: item,
                      onAdd: () {
                        context
                            .read<CartCubit>()
                            .increaseQuantity(index);
                      },
                      onRemove: () {
                        context
                            .read<CartCubit>()
                            .decreaseQuantity(index);
                      },
                    );
                  },
                ),
              ),

              ///  Summary Section
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Column(
                  children: [
                    BuilderCartSummary(
                      title: 'SubTotal',
                      value: state.subTotal,
                      isBold: true,
                    ),
                    BuilderCartSummary(
                      title: 'Delivery Fee',
                      value: state.subTotal * 0.2,
                      isBold: true,
                    ),
                    BuilderCartSummary(
                      title: 'Tax',
                      value: (state.subTotal * 0.2) / 2,
                      isBold: true,
                    ),
                  ],
                ),
              ),

              ///  Total + Button
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Total',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          state.total.toStringAsFixed(2),
                          style: const TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Checkout',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
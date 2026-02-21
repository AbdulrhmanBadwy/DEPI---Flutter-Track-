import 'package:flutter/cupertino.dart' show immutable;

import '../../models/cart_item_model.dart';

@immutable
class CartState {
  final List<CartItemModel> listOfCartItem;

  const CartState({required this.listOfCartItem});

  factory CartState.initial() {
    return const CartState(listOfCartItem: []);
  }

  double get subTotal =>
      listOfCartItem.fold(0, (sum, item) => sum + item.price * item.counter);

  double get total => subTotal + (subTotal * 0.2);

  CartState copyWith({List<CartItemModel>? listOfCartItem}) {
    return CartState(listOfCartItem: listOfCartItem ?? this.listOfCartItem);
  }
}

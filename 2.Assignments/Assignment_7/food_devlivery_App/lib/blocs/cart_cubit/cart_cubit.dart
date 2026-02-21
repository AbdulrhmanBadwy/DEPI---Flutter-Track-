import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/cart_item_model.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState.initial());

  void loadCart() {
    emit(state.copyWith(listOfCartItem: CartItemModel.cartItems));
  }

  void increaseQuantity(int index) {
    final updatedList = List<CartItemModel>.from(state.listOfCartItem);
    updatedList[index].counter++;

    emit(state.copyWith(listOfCartItem: updatedList));
  }

  void decreaseQuantity(int index) {
    final updatedList = List<CartItemModel>.from(state.listOfCartItem);

    if (updatedList[index].counter > 0) {
      updatedList[index].counter--;
    }

    emit(state.copyWith(listOfCartItem: updatedList));
  }
}
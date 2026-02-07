import '../Payment_Process/payment.dart';
import 'shopping_cart.dart';

class Order with Action {
  ShoppingCart shoppingCart;
  int Id;
  String Data;
  double TotalPrice;

  Order({
    required this.shoppingCart,
    required this.Data,
    required this.Id,
    required this.TotalPrice,
  });

  @override
  String toString() {
    return this.toString();
  }

 
}

mixin Action {

   void checkOut(Payment payment) {
    print('We are checkOut use ${payment.toString()}'); 
  }
}

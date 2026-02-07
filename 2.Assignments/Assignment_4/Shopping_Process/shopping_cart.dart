import '../Product_Catalog/product.dart';
import '../User_Management/Customer.dart';

class ShoppingCart {
  Customer customer;
  List<Map<Product, int>> SelectedItmes;

  ShoppingCart(this.customer, this.SelectedItmes);

  void addingItem(Product product, int amount) {
    for (var item in SelectedItmes) {
      if (item.containsKey(product)) {
        item[product] = item[product]! + amount;
        return;
      }
    }
    SelectedItmes.add({product: amount});
  }

  void removingItem(Product product) {
    SelectedItmes.removeWhere((item) => item.containsKey(product));
  }

  double getTotalPrice() {
    double totalPrice = 0;

    for (var item in SelectedItmes) {
      for (var entry in item.entries) {
        Product product = entry.key;
        int quantity = entry.value;

        totalPrice += product.productPrice * quantity;
      }
    }

    return totalPrice; 
  }
}

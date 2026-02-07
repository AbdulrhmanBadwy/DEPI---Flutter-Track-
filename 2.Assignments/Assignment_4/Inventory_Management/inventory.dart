
import '../Product_Catalog/product.dart';

class Inventory {
  List<Map<Product, int>> stock;

  Inventory(this.stock);
  void addingProduct(Map<Product, int> item) {
    stock.add(item);
  }

  bool checkAvailable(Product product) {
    for (var item in stock) {
      if (item[product] == 0 || item[product] == null) {
        return false;
      }
    }
    return true;
  }

  void updateStock({required Product product , required int amount}) {
    for (var item in stock) {
      if (item.containsKey(product)) {
        item[product] = item[product]! + amount;
        return; 
      }
    }
  }
}

import '../Inventory_Management/inventory.dart';
import '../Product_Catalog/product.dart';
import 'User.dart';

class Admin extends User {
  List<String> _privileges;
  Inventory inventory;

  set privileges(List<String> Privileges) => _privileges = Privileges;
  get privileges => _privileges;
  Admin(
    this._privileges, {
    required int userId,
    required String email,
    required String password,
    required this.inventory,
  }) : super(userId: userId, email: email, password: password);

  void addingProduct(Map<Product, int> item) {
    inventory.addingProduct(item);
  }

  bool checkAvailablity(Product product) {
    return( inventory.checkAvailable(product));
  }

  void updateStock({ required Product product,required int amount}) {
    inventory.updateStock(product: product, amount: amount); 
  }
}

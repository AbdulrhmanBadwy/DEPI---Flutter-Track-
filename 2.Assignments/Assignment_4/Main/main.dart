
import '../Inventory_Management/inventory.dart';
import '../Payment_Process/creditCard_Payement.dart';
import '../Product_Catalog/clothingProduct.dart';
import '../Product_Catalog/electronicProduct.dart';
import '../Product_Catalog/product.dart';
import '../Shopping_Process/order.dart';
import '../Shopping_Process/shopping_cart.dart';
import '../User_Management/Admin.dart';
import '../User_Management/Customer.dart';

void main() {
  Clothingproduct clothingproduct1 = Clothingproduct(
    ['x', 'XL'],
    productId: 1020,
    productName: 'T-shirt',
    productPrice: 700,
    description: 'This is Good Quality T-shirt',
  );

  Clothingproduct clothingproduct2 = Clothingproduct(
    ['XL', 'XXL'],
    productId: 1030,
    productName: 'Swi-T-Shirt',
    productPrice: 800,
    description: 'New and Good Quality T-shirt',
  );

  ElectronicProduct electronicProduct = ElectronicProduct(
    5,
    productId: 1040,
    productName: 'Washing Machine',
    productPrice: 15000,
    description: 'Wahsing Machine for fast and good clean ',
  );

  List<Map<Product, int>> stock = [
    {clothingproduct1: 10},
    {clothingproduct2: 20},
    {electronicProduct: 15},
  ];
  Inventory inventory = Inventory(stock);
  Admin admin = Admin(
    ['Adding', 'Udating ', 'Removing'],
    userId: 1,
    email: 'admin@admin.com',
    password: 'admin1212',
    inventory: inventory,
  );

  Customer customer = Customer(
    userId: 2,
    email: 'customer@customer.com',
    password: 'customer1221',
    shippingAddress: 'Sharqia-KafrSaqr',
  );

  List<Map<Product, int>> SelectedItmes = [
    {clothingproduct1: 2},
    {clothingproduct2: 4},
    {electronicProduct: 1},
  ];

  ShoppingCart shoppingCart = ShoppingCart(customer, SelectedItmes);
  for (var item in SelectedItmes) {
    for (var entry in item.entries) {
      Product p = entry.key;

      if (admin.checkAvailablity(p)) ;
      shoppingCart = ShoppingCart(customer, SelectedItmes);
    }
  }

  Order order = Order(
    shoppingCart: shoppingCart,
    Data: '17-10-2025',
    Id: 10,
    TotalPrice: shoppingCart.getTotalPrice(),
  );

  CreditcardPayement creditcardPayement = CreditcardPayement(
    cardNumber: '10203040506070',
    expiryDate: '20/20/2026',
    CVV: 103,
  );

  order.checkOut(creditcardPayement); 
}

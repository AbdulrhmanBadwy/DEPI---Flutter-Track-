import 'product.dart';

class Clothingproduct extends Product {
  List<String> _availableSize;

  set availableSize(List<String> availableSize) => _availableSize = availableSize;
  get availableSize => _availableSize;

  Clothingproduct(
    this._availableSize, {
    required int productId,
    required String productName,
    required double productPrice,
    required String description,
  }) : super(
         productId: productId,
         productName: productName,
         productPrice: productPrice,
         description: description,
       );

  @override
  void productInformation() {
    print('\t\t|Clothing Product Infromation ');
    print('Product Id : ${this.productId}');
    print('Product Name : ${this.productName}');
    print('Product Price: ${this.productPrice}');
    print('Product Description: ${this.description}');
    print('Available Size $availableSize'); 
  }
}

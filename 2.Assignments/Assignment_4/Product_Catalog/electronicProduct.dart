import 'product.dart';

class ElectronicProduct extends Product {
  int _warrantyPeriod;

  set warrantyPeriod(int warrantyPeriod) => _warrantyPeriod = warrantyPeriod;
  get warrantyPeriod => _warrantyPeriod; 

  ElectronicProduct(
    this._warrantyPeriod, {
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
    print('\t\t|Electronic Product Information ');
    print('Product Id : ${this.productId}');
    print('Product Name : ${this.productName}');
    print('Product Price: ${this.productPrice}');
    print('Product Description: ${this.description}');
    print('Warranty Period $warrantyPeriod'); 
  }
}

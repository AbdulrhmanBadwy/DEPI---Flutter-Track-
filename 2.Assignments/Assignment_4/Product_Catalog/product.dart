abstract class Product {
  int _productId;
  String _productName;
  double _productPrice;
  String _description;

  set productId(int productId) => _productId = productId;
  set productName(String productName) => _productName = productName;
  set prodcutPrice(double productPrice) => _productPrice = productPrice;
  set description(String description) => _description = description;

  get productId => _productId;
  double get  productPrice => _productPrice;
  get productName => _productName;
  get description => _description;

  Product({
    required int productId,
    required String productName,
    required double productPrice,
    required String description,
  }) : _productId = productId,
       _description = description,
       _productName = productName,
       _productPrice = productPrice;

  void productInformation(); 

}

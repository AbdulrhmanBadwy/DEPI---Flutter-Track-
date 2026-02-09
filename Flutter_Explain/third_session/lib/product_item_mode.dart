class ProductItemModel {
  final String name;
  final String image;
  final double price;
  bool isFavourite;

  ProductItemModel({
    required this.name,
    required this.image,
    required this.price,
    this.isFavourite = false,
  });

  static List<ProductItemModel> listOfItems = [
    ProductItemModel(
      name: 'Cozy Knit Sweater',
      image: 'assets/cloths/crozy_knit_sweater.png',
      price: 100,
    ),
    ProductItemModel(
      name: 'Classic Leather Boots',
      image: 'assets/cloths/classic_leather_boots.png',
      price: 100,
    ),
    ProductItemModel(
      name: 'Minimalist Backpack',
      image: 'assets/cloths/backpack.png',
      price: 100,
    ),
    ProductItemModel(
      name: 'Urban Streetwear Jacket',
      image: 'assets/cloths/urban_streetwear_jacket.png',
      price: 100,
    ),
    ProductItemModel(
      name: 'Vintage Denim Jeans',
      image: 'assets/cloths/vintage_jeans.png',
      price: 100,
    ),
    ProductItemModel(
      name: 'Athletic Running Shoes',
      image: 'assets/cloths/running_shoes.png',
      price: 100,
    ),
  ];
}
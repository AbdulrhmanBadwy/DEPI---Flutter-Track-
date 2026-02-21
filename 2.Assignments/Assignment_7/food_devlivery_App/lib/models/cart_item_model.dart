class CartItemModel {
  String name;
  String size;
  bool isBurgerPalace;
  String image;
  int price ;
  int counter;
  CartItemModel({
    required this.name,
    required this.size,
    required this.isBurgerPalace,
    required this.image,
    required this.counter,
    required this.price,
  });

static List<CartItemModel> cartItems = [
  CartItemModel(
    name: 'Classic Burger',
    size: 'Large',
    isBurgerPalace: true,
    image: 'assets/images/burger_food_details.jpg',
    counter: 0,
    price: 30
  ),
  CartItemModel(
    name: 'Chicken Pizza',
    size: 'Medium',
    isBurgerPalace: false,
    image: 'assets/images/pizza_food_details.jpg',
    counter: 0,
    price: 40
  ),
];
}

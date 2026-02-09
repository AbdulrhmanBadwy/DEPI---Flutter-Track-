class ViewItemModel {
  String? image;
  String? name;
  String? price;
  double? reviews = 0.0;
  String? description;
  double? time;
  double? kCalory;
  List<String>? ingredients;
  bool isFavourite = false;

  ViewItemModel({
    this.image,
    this.name,
    this.price,
    this.reviews,
    this.description,
    this.time,
    this.kCalory,
    this.ingredients,
    required this.isFavourite,
  });
}

List<ViewItemModel> items = [
  ViewItemModel(
    image: 'assets/images/burger_food_details.jpg',
    name: 'Special Beef Burger',
    price: '\$12.5',
    reviews: 4.8,
    description: 'Special Burger very delicious and very cheap and have a lot of beautiful ingredients ',
    time: 20,
    kCalory: 350,
    ingredients: ['Beef Patty', 'Cheddar', 'Lettuce', 'Tomato'],
    isFavourite: true,
  ),
  ViewItemModel(
    image: 'assets/images/pizza_food_details.jpg',
    name: 'Unique Pizza Heart',
    price: '\$40',
    reviews: 4.8,
    description:
        'Pizza Heart is not for People that have weak Heart it is very Spicy',
    time: 35,
    kCalory: 700,
    ingredients: ['Beef Patty', 'Cheddar', 'Moralizer', 'Tomato'],
    isFavourite: false,
  ),
];

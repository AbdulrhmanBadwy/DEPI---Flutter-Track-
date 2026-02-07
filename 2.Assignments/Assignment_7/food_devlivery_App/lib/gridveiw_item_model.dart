class GridViewItemModel {
  final String title;
  final String description;
  final String image;

  GridViewItemModel({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<GridViewItemModel> gridItems = [
  GridViewItemModel(
    title: 'Burger Combo',
    description: 'Delicious burger & hot burger ',
    image: 'assets/images/burgerCombo.png',
  ),
  GridViewItemModel(
    title: 'Pizza',
    description: 'Freshly baked pizza & and hot delicious',
    image: 'assets/images/pizza_hurt.png',
  ),

];

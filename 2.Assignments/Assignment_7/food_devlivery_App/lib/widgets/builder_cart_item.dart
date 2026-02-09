import 'package:flutter/material.dart';
import 'package:food_devlivery_app/models/cart_item_model.dart';

class BuilderCartItem extends StatelessWidget {
  final CartItemModel itemModel;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  const BuilderCartItem({
    super.key,
    required this.itemModel,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Selected Items
        Card(
          child: ListTile(
            title: Text(itemModel.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Size: ${itemModel.size}',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  itemModel.isBurgerPalace
                      ? 'Burger Palace'
                      : 'Pizza Palace',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            isThreeLine: true,
            leading: Container(
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(itemModel.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            trailing: SizedBox(
              width: 120,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed:onRemove,
                    icon: Icon(Icons.remove_circle_outline),
                  ),

                  Text(
                    '${itemModel.counter}',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed:onAdd,
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

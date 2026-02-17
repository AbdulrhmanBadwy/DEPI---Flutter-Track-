import 'package:assignment_9/controllers/todo_controller.dart';
import 'package:flutter/material.dart';

class IconDropdownWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final TodoController provider;
  final BuildContext context;
  const IconDropdownWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.color ,
    required this.provider,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(icon,color: color,),
      ),
      title: Text(title , style:  TextStyle(color:  color),),
      onTap: (){
        provider.categoryController.text = title;
        Navigator.pop(context);
      },
    );
  }
}

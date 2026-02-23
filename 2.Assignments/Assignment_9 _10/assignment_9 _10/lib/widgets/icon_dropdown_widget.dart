import 'package:assignment_9/controllers/blocs/todo_with_bloc/todo_bloc.dart';
import 'package:flutter/material.dart';

class IconDropdownWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final TodoBloc bloc;
  final BuildContext context;
  const IconDropdownWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.color ,
    required this.bloc,
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
        bloc.categoryController.text = title;
        Navigator.pop(context);
      },
    );
  }
}

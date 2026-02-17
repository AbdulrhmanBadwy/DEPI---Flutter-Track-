import 'package:assignment_9/controllers/todo_controller.dart';
import 'package:assignment_9/widgets/icon_dropdown_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<TodoController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Add Task and Cancel button
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  alignment: AlignmentDirectional.topStart,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 83, bottom: 97),
                  child: Center(
                    child: Text(
                      'Add a Task',
                      style: TextStyle(
                        fontFamily: 'bardo',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // input
            Container(
              padding: EdgeInsets.zero,
              width: 245,
              height: 189,
              child: Column(
                spacing: 20,
                children: [
                  // task
                  TextFormField(
                    controller: provider.taskController,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: 'Name your task',
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  // Category
                  TextFormField(
                    controller: provider.categoryController,
                    readOnly: true,
                    onTap: (){
                      _showCategoryPicker(context, provider);
                    },
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: 'Choose a category',
                      border: UnderlineInputBorder(),
                      suffixIcon: Icon(Icons.arrow_drop_down),
                    ),
                  ),
                  //date
                  TextFormField(
                    controller: provider.dateController,
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2100),
                      );

                      if (pickedDate != null) {
                        provider.dateController.text =
                        "${pickedDate.month}/${pickedDate.day}/${pickedDate.year}";
                      }
                    },
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: 'Choose date',
                      border: UnderlineInputBorder(),
                      suffixIcon: Icon(Icons.calendar_month_outlined),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Container(
                margin: EdgeInsets.only(top: 237),
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.green,
                    shadowColor: Colors.black,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    provider.addTodo();
                    provider.dateController.clear();
                    provider.taskController.clear();
                    provider.categoryController.clear();
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'bardo',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showCategoryPicker(BuildContext context, TodoController provider) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconDropdownWidget(
                icon: Icons.person,
                title: 'Personal',
                color: Colors.teal,
                provider: provider,
                context: context,
              ),
              IconDropdownWidget(
                icon: Icons.work,
                title: 'Work',
                color: Colors.blue,
                provider: provider,
                context: context,
              ),
              IconDropdownWidget(
                icon: Icons.monitor_heart_outlined,
                title: 'Health',
                color: Colors.red,
                provider: provider,
                context: context,
              ),
              IconDropdownWidget(
                icon: Icons.home,
                title: 'Family',
                color: Colors.grey,
                provider: provider,
                context: context,
              ),

              IconDropdownWidget(
                icon: Icons.school_outlined,
                title: 'Learning',
                color: Colors.orange,
                provider: provider,
                context: context,
              ),

            ],
          ),
        );
      },
    );
  }
}

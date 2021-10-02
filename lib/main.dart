import 'package:custom_todo_list_app/Components/new_task_data.dart';
import 'package:flutter/material.dart';
import 'package:custom_todo_list_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(CustomToDoList());
}

class CustomToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NewTaskData>(
      create: (context) => NewTaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

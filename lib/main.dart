import 'package:flutter/material.dart';
import 'package:custom_todo_list_app/screens/tasks_screen.dart';

void main() {
  runApp(CustomToDoList());
}

class CustomToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}

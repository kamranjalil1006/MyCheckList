import 'package:custom_todo_list_app/custom_widgets/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:custom_todo_list_app/Components/task.dart';

class MyCustomListView extends StatefulWidget {
  @override
  _MyCustomListViewState createState() => _MyCustomListViewState();
}

class _MyCustomListViewState extends State<MyCustomListView> {
  List<Task> tasks = [
    Task(name: 'This is a Task'),
    Task(name: 'This is a Task'),
    Task(name: 'This is a Task')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return MyCustomListTile(
          taskName: tasks[index].name,
          isChecked: tasks[index].isDone,
          boxCheckToggle: (checkBoxState) {
            setState(() {
              tasks[index].boxCheckerStateChanger();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}

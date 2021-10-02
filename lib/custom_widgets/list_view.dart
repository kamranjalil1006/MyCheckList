import 'package:custom_todo_list_app/Components/new_task_data.dart';
import 'package:custom_todo_list_app/custom_widgets/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCustomListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NewTaskData>(
      builder: (context, newTaskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = newTaskData.tasks[index];
            return MyCustomListTile(
              isChecked: task.isDone,
              taskName: task.name,
              boxCheckToggle: (value) {
                newTaskData.taskUpdate(task);
              },
              onLongPress: () {
                newTaskData.deleteTask(task);
              },
            );
          },
          itemCount: newTaskData.tasks.length,
        );
      },
    );
  }
}

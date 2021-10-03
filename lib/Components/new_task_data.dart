import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:custom_todo_list_app/Components/task.dart';

class NewTaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get tasksCount {
    return _tasks.length;
  }

  void addNewTask(String newTaskName) {
    final newTask = Task(name: newTaskName);
    _tasks.add(newTask);
    notifyListeners();
  }

  void taskUpdate(Task currentTask) {
    currentTask.togglingCheckStateMethod();
    notifyListeners();
  }

  void deleteTask(Task currentTask) {
    _tasks.remove(currentTask);
    notifyListeners();
  }
}

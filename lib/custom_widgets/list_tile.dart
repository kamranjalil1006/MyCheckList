import 'package:flutter/material.dart';

class MyCustomListTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function boxCheckToggle;
  MyCustomListTile(
      {required this.isChecked,
      required this.taskName,
      required this.boxCheckToggle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked == true ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value) {
          boxCheckToggle(value);
        },
      ),
    );
  }
}

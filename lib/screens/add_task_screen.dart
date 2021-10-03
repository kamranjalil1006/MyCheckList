import 'package:custom_todo_list_app/Components/new_task_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomSheetBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, color: Colors.purple),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Task Name',
                  hintStyle: TextStyle(color: Colors.black54),
                ),
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
                onPressed: () {
                  // upon pressing the 'Add', application will call the addNewTask method located inside the resource class(NewTaskData) that we allocated to the Provider Widget and Pop the bottomSheet
                  Provider.of<NewTaskData>(context, listen: false)
                      .addNewTask(newTaskTitle);
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Text(
                    'Add',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

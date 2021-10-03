import 'package:custom_todo_list_app/Components/instructions.dart';
import 'package:custom_todo_list_app/Components/new_task_data.dart';
import 'package:custom_todo_list_app/custom_widgets/list_view.dart';
import 'package:custom_todo_list_app/screens/add_task_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.orange],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.purpleAccent,
            child: Icon(
              Icons.add,
              size: 40,
            ),
            onPressed: () {
              showModalBottomSheet(
                // this is used for Displaying the bottomSheet for the user to add another task
                isScrollControlled: true,
                // if only 'isScrollControlled' is true without the SingleChildScrollView Widget then the bottomSheet will acquire the whole screen
                context: context,
                builder: (context) => SingleChildScrollView(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                    // this restricts the bottomSheet to its required area only
                  ),
                  child: BottomSheetBuilder(),
                  // this widget will be displayed in bottomSheet
                ),
              );
            },
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 60, right: 30, left: 30, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        // this button is used for displaying instructions
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Instructions();
                              });
                        },
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.menu,
                            color: Colors.purpleAccent,
                            size: 40,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Check List',
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '${Provider.of<NewTaskData>(context).tasks.length} Tasks',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 60),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: MyCustomListView(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

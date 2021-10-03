import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  const Instructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'How to Use',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 50,
            ),
            Text('"Adding a task"',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
            Text(
              'Click on the add icon at the bottom and add the required task',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '"Deleting a task"',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            Text(
              'Click and hold on the desired task for 2 seconds and the task will be deleted',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

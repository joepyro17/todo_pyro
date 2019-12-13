import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskName;
    DateTime newTaskDate;
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0),
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: 'Task Name',
              hintText: 'Ex: Sit up for 100 times',
            ),
            onChanged: (newText) {
              newTaskName = newText;
            },
          ),
        ],
      ),
    );
  }
}

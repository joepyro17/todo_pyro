import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final String taskSubTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({this.isChecked, this.taskTitle, this.taskSubTitle, this.checkboxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          taskTitle,
      style: TextStyle(color: Colors.black),
      ),
      subtitle: Text(
          taskSubTitle,
        style: TextStyle(color: Colors.black54),
      ),
      trailing: Checkbox(
        activeColor: Colors.amber,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: longPressCallback,
    );
  }
}

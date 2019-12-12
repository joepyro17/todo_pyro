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
      title: Text(taskTitle),
      subtitle: Text(taskSubTitle),
      trailing: Checkbox(
        activeColor: Colors.purple,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: longPressCallback,
    );
  }
}

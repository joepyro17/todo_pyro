import 'package:flutter/material.dart';
import 'package:todo_pyro/widgets/task_list.dart';

class TaskListArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0.40 * MediaQuery.of(context).size.height, left: 20.0),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
//          borderRadius: BorderRadius.only(
//            bottomLeft: Radius.circular(50.0),
//            bottomRight: Radius.circular(50.0),
//          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TaskList(),
        ],
      ),
    );
  }
}
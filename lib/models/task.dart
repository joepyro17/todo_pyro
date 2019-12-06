import 'package:flutter/cupertino.dart';

class TaskModel {
  final String name;
  final DateTime date;
  bool isDone;

  TaskModel({
    @required this.name,
    @required this.date,
    this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}

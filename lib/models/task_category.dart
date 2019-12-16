import 'package:flutter/material.dart';

import 'task.dart';

class CategoryModel {
  final String categoryName;
  List<TaskModel> taskItem = List<TaskModel>();
  final Color backgroundColor;
  int remainingTask;
  int totalTask;

  CategoryModel({@required this.categoryName, this.taskItem, @required this.backgroundColor, this.remainingTask = 0, this.totalTask = 0});
}
import 'package:flutter/material.dart';

import 'task.dart';

class CategoryModel {
  final String categoryName;
  List<TaskModel> taskItem = [];
  final Color backgroundColor;
  final int remainingTask;
  final int totalTask;

  CategoryModel({@required this.categoryName, this.taskItem, @required this.backgroundColor, this.remainingTask = 0, this.totalTask = 0});
}
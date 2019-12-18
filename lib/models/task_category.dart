import 'package:flutter/material.dart';

import 'task.dart';

class CategoryModel {
  final String categoryName;
  List<TaskModel> taskItem = List<TaskModel>();
  final Color backgroundColor;
  int remainingTask;
  int totalTask;

  CategoryModel(
      {@required this.categoryName,
      this.taskItem,
      @required this.backgroundColor,
      this.remainingTask = 0,
      this.totalTask = 0});

  Map<String, dynamic> toMap(){
    return {
      'categoryName' : categoryName,
      'taskItem' : taskItem,
      'backgroundColor' : backgroundColor,
      'remainingTask' : remainingTask,
      'totalTask' : totalTask,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      categoryName: map['categoryName'],
      taskItem: map['taskItem'],
      backgroundColor: map['backgroundColor'],
      remainingTask: map['remainingTask'],
      totalTask: map['totalTask'],
    );
  }
}

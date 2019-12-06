import 'package:todo_pyro/models/task_category.dart';
import 'package:todo_pyro/models/task.dart';

List<TaskCategoryModel> taskData = [
  TaskCategoryModel(
    categoryName: "Exercise",
    taskItem:[
      TaskModel(
        name: "Running for 10 Minute",
        date: DateTime.now(),
      ),
      TaskModel(
        name: "Walking for 0.5 hours",
        date: DateTime.now(),
      ),
      TaskModel(
        name: "Sit Up",
        date: DateTime.now(),
      ),
    ]
  ),

];


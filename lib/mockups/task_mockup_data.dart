import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todo_pyro/models/task_category.dart';
import 'package:todo_pyro/models/task.dart';

class CategoryMockUpData extends ChangeNotifier {
  int _cardWasTappedID = 0;
  String _tappedCategoryName = '';

  List<CategoryModel> _categoryData = [
    CategoryModel(
      categoryName: "Exercise",
      backgroundColor: Colors.purple,
      remainingTask: 0,
      totalTask: 2,
      taskItem: [
        TaskModel(
          name: "Running for 10 Minute",
          date: DateTime.now(),
        ),
        TaskModel(
          name: "Walking for 0.5 hours",
          date: DateTime.now(),
        ),
      ],
    )
  ];

  //List<CategoryModel> _categoryData = List<CategoryModel>();

  // Get Category Length
  int get categoryCount => _categoryData.length;

  // get Tasks Detail
  UnmodifiableListView<CategoryModel> get categories =>
      UnmodifiableListView(_categoryData);

  // This function does not need notifyListeners()
  void initCategoryName() {
    _tappedCategoryName = _categoryData[_cardWasTappedID].categoryName;
  }

  void cardWasTapped(int index) {
    _cardWasTappedID = index;
    notifyListeners();
  }

  int get cardWasTappedID => _cardWasTappedID;

  void setTappedCategoryName() {
    _tappedCategoryName = _categoryData[_cardWasTappedID].categoryName;
    notifyListeners();
  }

  String tappedCategoryName() {
    return _tappedCategoryName;
  }

  void addNewCategory({String name, Color color}) {
    List<TaskModel> emptyTask = List<TaskModel>();
    CategoryModel newCategory =
        CategoryModel(categoryName: name, backgroundColor: color, taskItem: emptyTask);
    _categoryData.add(newCategory);
    notifyListeners();
  }

  void deleteCategory({int index}){
    _categoryData.removeAt(index);
    notifyListeners();
  }

  void addNewTask({int categoryIndex, String taskName, DateTime deadline}) {
    TaskModel newTask = TaskModel(name: taskName, date: deadline);
    _categoryData[categoryIndex].taskItem.add(newTask);
    notifyListeners();
  }

  void updateTask({TaskModel task}){
    task.toggleDone();
    notifyListeners();
  }

  void updateTotalTask({int categoryIndex, int totalTask}){
    _categoryData[categoryIndex].totalTask = totalTask;
    notifyListeners();
  }

  void remainingTask({int categoryIndex}){
   // int length = _categoryData[categoryIndex].taskItem.length;
    int totalDone = 0;

    for ( var item in _categoryData[categoryIndex].taskItem){
      if(item.isDone)
         totalDone = totalDone + 1;
    }

    _categoryData[categoryIndex].remainingTask = totalDone;
    notifyListeners();
  }

//  double remainingPercentage({int categoryIndex}){
//
//    int totalTask;
//    int totalDone = 0;
//    double remaining = 1.0;
//
//    totalTask = _categoryData[categoryIndex].totalTask;
//
//    for ( var item in _categoryData[categoryIndex].taskItem){
//      if(item.isDone)
//        totalDone = totalDone + 1;
//    }
//
//    remaining = totalDone / totalTask;
//    return remaining;
//  }

}

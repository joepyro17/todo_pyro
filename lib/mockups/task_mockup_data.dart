import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todo_pyro/models/task_category.dart';
import 'package:todo_pyro/models/task.dart';

class CategoryMockUpData extends ChangeNotifier{
  int _cardWasTappedID = 0;
  String _tappedCategoryName = '';

  List<CategoryModel> _categoryData = [
    CategoryModel(
        categoryName: "Exercise",
        backgroundColor: Colors.purple,
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
//    CategoryModel(
//        categoryName: "App Development",
//        backgroundColor: Colors.grey,
//        taskItem:[
//          TaskModel(
//            name: "Create UX/UI",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Development",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Testing",
//            date: DateTime.now(),
//          ),
//        ]
//    ),
//    CategoryModel(
//        categoryName: "Exercise",
//        backgroundColor: Colors.deepOrange,
//        taskItem:[
//          TaskModel(
//            name: "Running for 10 Minute",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Walking for 0.5 hours",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Sit Up",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Running for 10 Minute",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Walking for 0.5 hours",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Sit Up",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Running for 10 Minute",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Walking for 0.5 hours",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Sit Up",
//            date: DateTime.now(),
//          ),
//        ]
//    ),
//    CategoryModel(
//        categoryName: "Exercise",
//        backgroundColor: Colors.green,
//        taskItem:[
//          TaskModel(
//            name: "Running for 10 Minute",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Walking for 0.5 hours",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Sit Up",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Running for 10 Minute",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Walking for 0.5 hours",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Sit Up",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Running for 10 Minute",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Walking for 0.5 hours",
//            date: DateTime.now(),
//          ),
//          TaskModel(
//            name: "Sit Up",
//            date: DateTime.now(),
//          ),
//        ]
//    ),
  ];

  // Get Task Length
  int get categoryCount => _categoryData.length;

  // get Tasks Detail
  UnmodifiableListView<CategoryModel> get categories => UnmodifiableListView(_categoryData);

  void cardWasTapped(int index){
    _cardWasTappedID = index;
    notifyListeners();
  }

  int get cardWasTappedID => _cardWasTappedID;

  void setTappedCategoryName(){
    _tappedCategoryName =  _categoryData[_cardWasTappedID].categoryName;
    notifyListeners();
  }

  String tappedCategoryName() {
    return _tappedCategoryName;
  }

  void addNewCategory({String name, Color color}){
    CategoryModel newCategory = CategoryModel(categoryName: name, backgroundColor: color);
    _categoryData.add(newCategory);
    notifyListeners();
  }

}


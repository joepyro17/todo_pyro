import 'package:flutter/material.dart';
import 'package:todo_pyro/state_management/task_data.dart';
import 'package:todo_pyro/screens/tasks_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CategoryMockUpData(),
      child: MaterialApp(
        title: 'To Do List',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: TasksScreen(),
      ),
    );
  }
}
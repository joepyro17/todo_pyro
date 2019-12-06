import 'package:flutter/material.dart';
import 'package:todo_pyro/screens/tasks_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do List',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: TasksScreen(),
      // home: TestMockup(),
    );
  }
}
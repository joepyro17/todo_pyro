import 'package:flutter/material.dart';

class TaskCategoryCard extends StatelessWidget {
  final Color backgroundColor;
  final String cardTitle;
  final int remainingTask;
  final int totalTask;

  TaskCategoryCard(
      {this.backgroundColor,
      this.cardTitle,
      this.remainingTask,
      this.totalTask});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: InkWell(
            onTap: () {
              print('Card tapped');
            },
            child: Container(
              padding: EdgeInsets.all(10.0),
              width: 150,
              child: ListTile(
                title: Text(
                  cardTitle,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '$remainingTask/$totalTask Tasks',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )));
  }
}

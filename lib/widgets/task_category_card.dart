import 'package:flutter/material.dart';

class TaskCategoryCard extends StatelessWidget {
  final Color backgroundColor;
  final String cardTitle;
  final int remainingTask;
  final int totalTask;
  final Function cardTapCallback;
  final Function cardLongPressCallback;

  TaskCategoryCard(
      {this.backgroundColor,
      this.cardTitle,
      this.remainingTask,
      this.totalTask,
      this.cardTapCallback,
      this.cardLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: InkWell(
            onTap: cardTapCallback,
            onLongPress: cardLongPressCallback,
            child: Container(
              padding: EdgeInsets.all(10.0),
              width: 140,
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

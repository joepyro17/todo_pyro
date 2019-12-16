import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
              padding: EdgeInsets.only(top:10.0),
              width: 120,
              child: Column(
                children: <Widget>[
                  Text(
                    cardTitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    '$remainingTask/$totalTask Tasks',
                    style: TextStyle(color: Colors.white),
                  ),
                  CircularPercentIndicator(
                    radius: 40,
                    lineWidth: 5.0,
                    percent: remainingTask / totalTask,
                    progressColor: Color(0xFF241331),
                  ),
                ],

              ),
            )));
  }
}

import 'package:flutter/material.dart';

class DateCard extends StatelessWidget {
  final String date;
  final String day;
  final Color backgroundColor;
  final Color letterColor;

  DateCard({this.date, this.day, this.backgroundColor, this.letterColor = Colors.purple});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Card(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () {
            print('Calendar tapped');
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                date,
                style: TextStyle(fontSize: 20.0, color: letterColor),
              ),
              Text(
                day,
                style: TextStyle(
                    fontSize: 20.0,
                    color: letterColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

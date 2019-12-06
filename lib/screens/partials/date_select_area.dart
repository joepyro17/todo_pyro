import 'package:flutter/material.dart';
import 'package:todo_pyro/widgets/date_card.dart';

class DateSelectArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 40),
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              DateCard(
                date: 'Sun',
                day: '01',
                backgroundColor: Colors.purple,
                letterColor: Colors.white,
              ),
              DateCard(
                date: 'Mon',
                day: '02',
                backgroundColor: Colors.white,
              ),
              DateCard(
                date: 'Tue',
                day: '03',
                backgroundColor: Colors.white,
              ),
              DateCard(
                date: 'Wed',
                day: '04',
                backgroundColor: Colors.white,
              ),
              DateCard(
                date: 'Tue',
                day: '03',
                backgroundColor: Colors.white,
              ),
              DateCard(
                date: 'Wed',
                day: '04',
                backgroundColor: Colors.white,
              ),
              DateCard(
                date: 'Tue',
                day: '03',
                backgroundColor: Colors.white,
              ),
              DateCard(
                date: 'Wed',
                day: '04',
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
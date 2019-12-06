import 'package:flutter/material.dart';
import 'package:todo_pyro/widgets/task_category_card.dart';

class CatagoryCardArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
      width: double.infinity,
      height: 0.72 * MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: Color(0xFF241331),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                TaskCategoryCard(
                  cardTitle: 'Company Work',
                  backgroundColor: Colors.purple,
                  remainingTask: 3,
                  totalTask: 5,
                ),
                TaskCategoryCard(
                  cardTitle: 'Exercise',
                  backgroundColor: Colors.grey,
                  remainingTask: 2,
                  totalTask: 7,
                ),
                TaskCategoryCard(
                  cardTitle: 'Company Work',
                  backgroundColor: Colors.purple,
                  remainingTask: 3,
                  totalTask: 5,
                ),
                TaskCategoryCard(
                  cardTitle: 'Exercise',
                  backgroundColor: Colors.grey,
                  remainingTask: 2,
                  totalTask: 7,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
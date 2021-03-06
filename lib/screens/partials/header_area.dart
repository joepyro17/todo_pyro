import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_pyro/state_management/task_data.dart';

class HeaderArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryMockUpData>(// ignore: missing_return
        builder: (context, categoryData, child) {
      //String name = categoryData.tappedCategoryName();
      String name;

      // Check if categoryData has element
      if (categoryData.categories.isEmpty) {
        name = 'Empty';
      }
      // if has more than one, set 0 index to cardWasTapped
      else {
        categoryData.initCategoryName();
        name = categoryData.tappedCategoryName();
      }

      return Container(
        padding: EdgeInsets.only(top: 50.0),
        width: double.infinity,
        height: 0.17 * MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white10),
            color: Color(0xFF241331),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              //   bottomRight: Radius.circular(50.0),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
//            Icon(
//              Icons.menu,
//              color: Colors.white,
//              size: 30,
//            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'To Do List',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  name,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
//            Icon(
//              Icons.info,
//              color: Colors.white,
//              size: 30,
//            ),
          ],
        ),
      );
    });
  }
}

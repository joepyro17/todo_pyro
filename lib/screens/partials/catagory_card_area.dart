import 'package:flutter/material.dart';
import 'package:todo_pyro/mockups/task_mockup_data.dart';
import 'package:todo_pyro/widgets/task_category_card.dart';
import 'package:provider/provider.dart';

class CatagoryCardArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 0.0, bottom: 50.0, right: 0.0),
      width: double.infinity,
      height: 0.40 * MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: Color(0xFF241331),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            //  bottomRight: Radius.circular(50.0)
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 0.17 * MediaQuery.of(context).size.height,
            child: Consumer<CategoryMockUpData>(
                builder: (context, categoryData, child) {
              if (categoryData.categories.isEmpty) {
                return Container();
              } else {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: categoryData.categoryCount,
                  itemBuilder: (context, index) {
                    final category = categoryData.categories[index];

                    return TaskCategoryCard(
                        cardTitle: category.categoryName,
                        backgroundColor: category.backgroundColor,
                        remainingTask: category.remainingTask,
                        totalTask: category.totalTask,
                        cardTapCallback: () {
                          categoryData.cardWasTapped(index);
                          categoryData.setTappedCategoryName();
                        },
                      cardLongPressCallback:  (){
                          categoryData.deleteCategory(index: index);
                      },
                    );
                  },
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}

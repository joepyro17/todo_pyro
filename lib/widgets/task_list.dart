import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_pyro/state_management/task_data.dart';
import 'package:todo_pyro/widgets/task_tile.dart';
import 'package:intl/intl.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: missing_return
    return Consumer<CategoryMockUpData>(// ignore: missing_return
        builder: (context, categoryData, child) {
      if(categoryData.categories.isEmpty){
        return Container();
      }
      else{
        int categoryNo = categoryData.cardWasTappedID;
        //Firstly, check if there is no taskItem (Empty category)
        if(categoryData.categories[categoryNo].taskItem == null) {
          return Container();
        }
        //Show tasks
        else {
          int taskLength = categoryData.categories[categoryNo].taskItem.length;
          return Expanded(child: ListView.builder(scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: taskLength,
            itemBuilder: (context, index) {
              final task = categoryData.categories[categoryNo].taskItem[index];
              return TaskTile(taskTitle: task.name,
                taskSubTitle: DateFormat('yyyy-MM-dd kk:mm').format(task.date).toString(),
                isChecked: task.isDone,
                checkboxCallback: (checkbokState) {
                  categoryData.updateTask(task:task);
                  categoryData.remainingTask(categoryIndex: categoryNo);
                },
                longPressCallback: () {},);
            },),);
        }
      }
    });
  }
}

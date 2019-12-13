import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:todo_pyro/screens/add_category.dart';
import 'package:todo_pyro/screens/add_task.dart';
import 'package:todo_pyro/screens/partials/catagory_card_area.dart';
import 'package:todo_pyro/screens/partials/task_list_area.dart';
import 'package:todo_pyro/screens/partials/header_area.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        // both default to 16
        marginRight: 0,
        marginBottom: 0.56 * MediaQuery.of(context).size.height,
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        // this is ignored if animatedIcon is non null
        // child: Icon(Icons.add),
       // visible: _dialVisible,
        // If true user is forced to close dial manually
        // by tapping main button and overlay is not rendered.
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
        elevation: 8.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
              child: Icon(Icons.add_to_photos),
              backgroundColor: Colors.purple,
              label: 'Add Category',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => AddCategory(),
                );
              },
          ),
          SpeedDialChild(
            child: Icon(Icons.add),
            backgroundColor: Colors.amber,
            label: 'Add Task',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => AddTask(),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          TaskListArea(),
          CatagoryCardArea(),
          HeaderArea()
        ],
      ),
    );
  }
}





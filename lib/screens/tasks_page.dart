import 'package:flutter/material.dart';
import 'package:todo_pyro/screens/partials/date_select_area.dart';
import 'package:todo_pyro/screens/partials/catagory_card_area.dart';
import 'package:todo_pyro/screens/partials/task_list_area.dart';
import 'package:todo_pyro/screens/partials/header_area.dart';
import 'package:todo_pyro/widgets/fab_bottom_appbar_item.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  String _lastSelected = 'TAB: 0';

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: FABBottomAppBar(
        backgroundColor: Colors.purple,
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.check_circle_outline, text: 'Task'),
          FABBottomAppBarItem(iconData: Icons.settings, text: 'Calendar'),
//          FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Bottom'),
//          FABBottomAppBarItem(iconData: Icons.info, text: 'Bar'),
        ],
      ),
      body: Stack(
        children: <Widget>[
          DateSelectArea(),
          CatagoryCardArea(),
          TaskListArea(),
          HeaderArea()
        ],
      ),
    );
  }
}





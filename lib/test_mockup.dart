import 'package:flutter/material.dart';
import 'package:todo_pyro/mockups/task_mockup_data.dart';

class TestMockup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Test Mockup'),
            FlatButton(
              color: Colors.amberAccent,
              child: Text('Press to click instance in console'),
              onPressed: (){
                print(taskData[0].taskItem[0].name);
              },
            ),
          ],
        ),
      ),
    );
  }
}

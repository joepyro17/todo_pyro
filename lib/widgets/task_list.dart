import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        ListTile(
          leading: CircularCheckBox(
            value: true,
            onChanged: (value){},
          ),
          title: Text('Do 30 minutes of cardio Tyi biking', style: TextStyle(decoration: TextDecoration.lineThrough,),),
          subtitle: Text('Today', style: TextStyle(decoration: TextDecoration.lineThrough,),),
        ),
        ListTile(
          leading: CircularCheckBox(
            value: false,
            onChanged: (value){},
          ),
          title: Text('Bicep curls 10 reps'),
          subtitle: Text('Today'),
        ),
        ListTile(
          leading: CircularCheckBox(
            value: true,
            onChanged: (value){},
          ),
          title: Text('Shoulder presses 10 reps', style: TextStyle(decoration: TextDecoration.lineThrough,),),
          subtitle: Text('Today', style: TextStyle(decoration: TextDecoration.lineThrough,),),
        ),
        ListTile(
          leading: CircularCheckBox(
            value: false,
            onChanged: (value){},
          ),
          title: Text('icycle crunhes 20 reps'),
          subtitle: Text('02 Dec 2019'),
        ),
      ],

    );
  }
}

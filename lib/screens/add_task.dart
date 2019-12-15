import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:todo_pyro/mockups/task_mockup_data.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

// I have to put _controller outside the class, because I don't want it to be initialized everytime
TextEditingController _controller = TextEditingController();
DateTime _pickedDateTime;

class AddTask extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd HH:mm");
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    if (Provider.of<CategoryMockUpData>(context, listen: false)
        .categories
        .isEmpty) {
      return MaterialApp(
        home: Scaffold(
          body: Container(
            padding: EdgeInsets.only(top: 200, left: 20, right: 20),
            height: 500.0,
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Text(
                  'Firstly, please create Category',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 50,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Return',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      String categoryName =
          Provider.of<CategoryMockUpData>(context, listen: false)
              .tappedCategoryName();
      int categoryIndex =
          Provider.of<CategoryMockUpData>(context, listen: false)
              .cardWasTappedID;

      return MaterialApp(
        home: Scaffold(
          body: Container(
            padding: EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Add Task',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Text('($categoryName)'),
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: 'Task Name',
                      hintText: 'Ex: Sit up for 100 times',
                    ),
                    controller: _controller,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter Task Name !!!';
                      } else
                        return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Deadline',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 16, color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: DateTimeField(
                      format: format,
                      onShowPicker: (context, currentValue) async {
                        final date = await showDatePicker(
                            context: context,
                            firstDate: DateTime(1900),
                            initialDate: currentValue ?? DateTime.now(),
                            lastDate: DateTime(2100));
                        if (date != null) {
                          final time = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.fromDateTime(
                                currentValue ?? DateTime.now()),
                          );
                          _pickedDateTime = DateTimeField.combine(date, time);
                          return DateTimeField.combine(date, time);
                        } else {
                          return currentValue;
                        }
                      },
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    child: FlatButton(
                      onPressed: () {
                        if (_formKey.currentState.validate() &&
                            _pickedDateTime != null) {

                          print('categoryIndex: $categoryIndex');
                          print('taskName: ${_controller.text}');
                          print('deadline: ${_pickedDateTime.toString()}');

                          Provider.of<CategoryMockUpData>(context,
                                  listen: false)
                              .addNewTask(
                                  categoryIndex: categoryIndex,
                                  taskName: _controller.text,
                                  deadline: _pickedDateTime);

                          _controller.clear();
                          Navigator.pop(context);

                        }
                      },
                      child: Text(
                        'Add Task',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.purple,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    child: FlatButton(
                      onPressed: () {
                        _controller.clear();
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}

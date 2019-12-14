import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:todo_pyro/mockups/task_mockup_data.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

// I have to put _controller outside the class, because I don't want it to be initialized everytime
TextEditingController _controller = TextEditingController();

class AddTask extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd HH:mm");

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    if (Provider.of<CategoryMockUpData>(context, listen: false)
        .categories
        .isEmpty) {
      return Container(
        height: 500.0,
        alignment: Alignment.center,
        child: Text('Firstly, please create Category', style: TextStyle(fontSize: 20, color: Colors.red
        ),),
      );
    } else {
      return ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Add Task',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30.0),
                  ),
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
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Deadline',style: TextStyle(color: Colors.purple),),
                  ),
                  DateTimeField(
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
                          initialTime:
                          TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
                        );
                        return DateTimeField.combine(date, time);
                      } else {
                        return currentValue;
                      }
                    },
                  ),
                  SizedBox(height: 20.0,),
                  FlatButton(
                    onPressed: () {
//                      if (_formKey.currentState.validate()) {
//                        _controller.clear();
//                        Navigator.pop(context);
//                      }
                    },
                    child: Text(
                      'Add Task',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
  }
}

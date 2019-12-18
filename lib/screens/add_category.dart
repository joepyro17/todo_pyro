import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_pyro/state_management/task_data.dart';
import 'package:todo_pyro/color_picker.dart';

// I have to put _controller outside the class, because I don't want it to be initialized everytime
TextEditingController _controller = TextEditingController();
Color newCategoryColor = Colors.yellow;

class AddCategory extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Add Category',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30.0),
                      ),
                      TextFormField(
                        autofocus: true,
                        decoration: InputDecoration(
                          labelText: 'Category Name',
                          hintText: 'Ex: Exercise',
                        ),
                        controller: _controller,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Category Name !!! ';
                          } else
                            return null;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:30),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Category Color',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 16, color: Colors.black45),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ColorPicker(
                          color: Colors.yellow,
                          onChanged: (value) {
                            newCategoryColor = value;
                          },
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 50,
                        child: FlatButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              print('Pressed Button: ${_controller.text}');
                              Provider.of<CategoryMockUpData>(context,
                                      listen: false)
                                  .addNewCategory(
                                      name: _controller.text,
                                      color: newCategoryColor);
                              // Clear TextField
                              _controller.clear();
                              Navigator.pop(context);
                            }
                          },
                          child: Text(
                            'Add Category',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          color: Colors.purple,
                        ),
                      ),
                      SizedBox(height: 10),
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
                ))
          ],
        ),
      ),
    );
  }
}

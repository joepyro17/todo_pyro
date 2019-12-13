import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_pyro/mockups/task_mockup_data.dart';
import 'package:todo_pyro/color_picker.dart';

// I have to put _controller outside the class, because I don't want it to be initialized everytime
TextEditingController _controller = TextEditingController();
Color newCategoryColor = Colors.purple;

class AddCategory extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  // Test git
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(20.0),
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
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
                      validator: (value){
                        if(value.isEmpty){
                          return 'Please enter Category Name !!! ';
                        }
                        else
                          return null;
                      },
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
                    FlatButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          print('Pressed Button: ${_controller.text}');
                          Provider.of<CategoryMockUpData>(context, listen: false)
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
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.purple,
                    )
                  ],
                ),
              ),
            ))
      ],
    );
  }
}

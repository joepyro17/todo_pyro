import 'package:flutter/material.dart';

class HeaderArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50.0),
      width: double.infinity,
      height: 0.13 * MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            Icons.settings,
            color: Color(0xFF241331),
            size: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'To Do List',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
              ),
              Text('(Exercise)')
            ],
          ),
          Icon(
            Icons.photo_camera,
            color: Color(0xFF241331),
            size: 30,
          ),
        ],
      ),
    );
  }
}
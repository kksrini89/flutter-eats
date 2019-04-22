import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(
            child: Text('Second Screen'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

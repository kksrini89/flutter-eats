import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      body: Column(
        // child: Text('First Screen'),
        children: <Widget>[
          Center(
            child: Text('First Screen'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
        ],
      ),
    );
  }
}

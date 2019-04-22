import 'package:flutter/material.dart';

import '../src/screens/home.dart';
// import '../src/screens/first.dart';
// import '../src/screens/second.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: HomeScreen(),
      // routes: {
      //   '/': (context) => FirstScreen(),
      //   '/second': (context) => SecondScreen(),
      // },
    );
  }
}

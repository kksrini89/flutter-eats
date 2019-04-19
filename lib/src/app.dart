import 'package:flutter/material.dart';

import '../src/screens/home.dart';
// import '../src/widgets/topBar.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(      
      home: HomeScreen(),
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

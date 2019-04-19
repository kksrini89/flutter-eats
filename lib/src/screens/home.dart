import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

List<Widget> items = [
  Icon(Icons.home),
  Icon(Icons.search),
  Icon(Icons.announcement)
];

class HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Text('Delivery Address'),
          Spacer(),
          RaisedButton(
            onPressed: () {
              print("Cool!");
            },
            textColor: Colors.black,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 75.0,
        decoration: BoxDecoration(
          color: Colors.black12.withOpacity(0.5),
          boxShadow: [BoxShadow(blurRadius: 2.0)],
        ),
        child: Row(
          children: items.map((item) {
            var _index = items.indexOf(item);
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = _index;
                    print('Pressed $_index');
                  });
                },
                child: bottomNavItem(item, _currentIndex == _index),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  bottomNavItem(Widget item, bool isSelected) => Container(
        decoration: BoxDecoration(
            boxShadow: isSelected
                ? [
                    BoxShadow(
                        offset: Offset(0.0, 5.0),
                        blurRadius: 10.0,
                        color: Colors.black12.withOpacity(0.02))
                  ]
                : []),
        child: item,
      );
}

import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.easeInCirc,
            alignment: Alignment.center,
            height: status ? 200 : 300,
            width: status ? 200 : 300,
            color: Colors.red,
            child: AnimatedDefaultTextStyle(
              duration: Duration(seconds: 1),
              style: TextStyle(
                color: status ? Colors.white : Colors.black,
              ),
              child: Text('Hello World!'),
              curve: Curves.easeInSine,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            color: Colors.amber,
            onPressed: () {
              status = !status;
              setState(() {});
            },
            child: Text('Click me'),
          ),
        ],
      ),
    );
  }
}

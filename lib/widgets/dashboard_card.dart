import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final String animationName;
  final Widget screenName;

  const DashboardCard({
    Key key,
    this.animationName,
    this.screenName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => screenName,
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Text(
            animationName,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}

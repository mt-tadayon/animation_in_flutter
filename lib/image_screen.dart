import 'package:flutter/material.dart';
import 'dart:math' as math;

class ImageScreen extends StatefulWidget {
  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffE1719E),
        title: Text('TweenAnimationBuilder'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TweenAnimationBuilder(
            duration: Duration(seconds: 10),
            tween: Tween<double>(begin: 0, end: 2 * math.pi),
            curve: Curves.elasticInOut,
            builder: (context, double angle, child) => Transform.rotate(
              angle: angle,
              child: Center(
                child: Image.asset(
                  'assets/images/circle.png',
                  alignment: Alignment.bottomCenter,
                  scale: 3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

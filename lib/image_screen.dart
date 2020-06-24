import 'package:flutter/material.dart';

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
            duration: Duration(seconds: 5),
            tween: Tween<double>(begin: 0, end: 1),
            curve: Curves.easeOutQuad,
            builder: (context, double scale, child) => Transform.scale(
              scale: scale,
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

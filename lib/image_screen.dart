import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  static final tween = Tween<double>(begin: 0, end: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffE1719E),
        title: Text('TweenAnimationBuilder'),
      ),
      body: TweenAnimationBuilder(
        child: Image.asset(
          'assets/images/circle.png',
        ),
        duration: Duration(seconds: 5),
        tween: tween,
        curve: Curves.easeOutQuad,
        builder: (_, double scale, myChild) => Transform.scale(
          scale: scale,
          child: myChild,
        ),
      ),
    );
  }
}

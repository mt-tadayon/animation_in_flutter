import 'package:flutter/material.dart';

class ImplicitTweenAnimation extends StatefulWidget {
  @override
  _ImplicitTweenAnimationState createState() => _ImplicitTweenAnimationState();
}

class _ImplicitTweenAnimationState extends State<ImplicitTweenAnimation> {
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

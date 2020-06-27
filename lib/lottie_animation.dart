import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  @override
  _LottieAnimationState createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lottie Animation'), backgroundColor: const Color(0xff2B4937),),
      body: Center(
        child: Lottie.asset(
          'assets/animation/eco-earth.json',
        ),
      ),
    );
  }
}

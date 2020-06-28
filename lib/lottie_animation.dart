import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottie Animation'),
        backgroundColor: const Color(0xff2B4937),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: Lottie.asset(
          'assets/animation/eco-earth.json',
        ),
      ),
    );
  }
}

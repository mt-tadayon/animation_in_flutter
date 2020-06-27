import 'package:flutter/material.dart';

import 'widgets/wave_path.dart';

class AnimatedBuilderAnimation extends StatefulWidget {
  @override
  _AnimatedBuilderAnimationState createState() =>
      _AnimatedBuilderAnimationState();
}

class _AnimatedBuilderAnimationState extends State<AnimatedBuilderAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(seconds: 10), vsync: this)..repeat();
    _animation = Tween<double>(begin: -500, end: 0).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('AnimatedBuilder'),
      ),
      body: AnimatedBuilder(
        animation: _animation,
        child: WavePath(),
        builder: (_, waveChild) {
          return Stack(
            children: [
              Positioned(
                bottom: 0,
                right: _animation.value,
                child: waveChild,
              ),
              Positioned(
                bottom: 0,
                left: _animation.value,
                child: waveChild,
              )
            ],
          );
        },
      ),
    );
  }
}



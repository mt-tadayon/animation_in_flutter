import 'package:flutter/material.dart';
import 'widgets/wave_path.dart';

class AnimatedWidgetExample extends StatefulWidget {
  @override
  _AnimatedWidgetExampleState createState() =>
      _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(seconds: 10),
      vsync: this,
    )..repeat();
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
        title: Text('AnimatedWidget'),
      ),
      body: WaveAnimation(animation: _animation),
    );
  }
}

class WaveAnimation extends AnimatedWidget {
  const WaveAnimation({
    Key key,
    @required Animation animation,
  })  : _animation = animation,
        super(key: key, listenable: animation);

  final Animation _animation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: _animation.value,
          child: WavePath(),
        ),
        Positioned(
          bottom: 0,
          left: _animation.value,
          child: WavePath(),
        )
      ],
    );
  }
}

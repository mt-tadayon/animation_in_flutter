import 'package:flutter/material.dart';

class FooTransition extends StatefulWidget {
  @override
  _FooTransitionState createState() => _FooTransitionState();
}

class _FooTransitionState extends State<FooTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed)
          _controller.reverse();
        else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });

    _controller.forward();
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
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Foo Transition'),
        backgroundColor: const Color(0xffE94A47),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Image.asset('assets/images/dev_mobile.png'),
        ),
      ),
    );
  }
}

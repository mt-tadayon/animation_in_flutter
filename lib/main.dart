import 'package:flutter/material.dart';
import 'package:implicitanimation/lottie_animation.dart';

import 'animated_builder_animation.dart';
import 'animated_foo.dart';
import 'foo_transition.dart';
import 'implicit_tween_animation.dart';
import 'widgets/dashboard_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Implicit Animation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation In Flutter'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          DashboardCard(
            animationName: 'Implicit Animation',
            screenName: ImplicitAnimation(),
          ),
          DashboardCard(
            animationName: 'Tween Animation Builder',
            screenName: ImplicitTweenAnimation(),
          ),
          DashboardCard(
            animationName: 'Transition',
            screenName: FooTransition(),
          ),
          DashboardCard(
            animationName: 'AnimatedBuilder',
            screenName: AnimatedBuilderAnimation(),
          ),
          DashboardCard(
            animationName: 'LottieAnimation',
            screenName: LottieAnimation(),
          )
        ],
      ),
    );
  }
}


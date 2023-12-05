import 'package:flutter/material.dart';
import 'package:group_52_session_8/screens/home_screen.dart';
import 'package:group_52_session_8/screens/main_screen.dart';
import 'package:lottie/lottie.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  Route _buildRoute() {
    return PageRouteBuilder(
        transitionDuration: Duration(seconds: 2),
        pageBuilder: (ctx, anim, anim2) => HomeScreen(),
        transitionsBuilder: (ctx, animation, parent, child) {
          var tween = Tween(begin: 0.0, end: 1.0);

          return FadeTransition(
            opacity: animation.drive(tween),
            child: child,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, _buildRoute());
          },
          child: const Text("go to"),
        ),
      ),
      // body: Center(
      //   child: Lottie.asset(
      //     'assets/animation.json',
      //     errorBuilder: (c, o, t) {
      //       return Text("Error");
      //     },
      //   ),
      // ),
    );
  }
}



// Lottie

// Page Transition
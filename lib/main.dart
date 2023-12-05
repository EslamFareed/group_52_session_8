import 'package:flutter/material.dart';
import 'package:group_52_session_8/screens/animation_screen.dart';
import 'package:group_52_session_8/screens/main_screen.dart';
import 'package:group_52_session_8/screens/picker_screen.dart';
import 'package:group_52_session_8/screens/table_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notatoin_app_front_end/screens/animation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notation App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimationScreen(),
    );
  }
}
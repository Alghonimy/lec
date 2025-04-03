import 'package:flutter/material.dart';
import 'package:lec/screens/lecture_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Lecture Screen",
      home: LecScreen(),
    );
  }
}


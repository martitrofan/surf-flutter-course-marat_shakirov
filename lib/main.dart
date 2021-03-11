import 'package:flutter/material.dart';
import 'package:places/screens/home_screen.dart';
import 'package:places/screens/res/res.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final isDark = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "places",
      theme:  isDark ? darkTheme : lightTheme,
      home: HomeScreen (),
    );
  }
}


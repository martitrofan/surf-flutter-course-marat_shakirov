import 'package:flutter/material.dart';
import 'package:places/ui/screens/res/res.dart';

import 'ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  final isDark = true;

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "places",
      theme:  isDark ? darkTheme : lightTheme,
      home: const HomeScreen (),
    );
  }
}


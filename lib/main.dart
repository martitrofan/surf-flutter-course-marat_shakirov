import 'package:flutter/material.dart';
import 'package:places/screens/sight_details.dart';
import 'package:places/screens/sight_list_screen.dart';

import 'mocks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "places",
      home: LandingScreen(),
    );
  }
}

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isLoggedIn = true;
    return isLoggedIn ? SightListScreen() : SightDetails(sight: mocks[1]);
  }
}

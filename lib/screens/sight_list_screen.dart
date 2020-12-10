import 'package:flutter/material.dart';
import 'package:places/res/res.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  final _appBarStyle = TextStyle(
    color: appBarTitleColor,
    fontSize: 32,
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  );

  Widget _buildAppBar() {
    return AppBar(
      title: RichText(
        text: TextSpan(style: _appBarStyle, children: [
          TextSpan(children: [
            TextSpan(
              text: 'С',
              style: TextStyle(color: Colors.green),
            ),
            TextSpan(text: 'писок\n'),
          ]),
          TextSpan(children: [
            TextSpan(
              text: 'и',
              style: TextStyle(color: Colors.yellow),
            ),
            TextSpan(text: 'нтересных мест'),
          ]),
        ]),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      toolbarHeight: 128,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        child: Center(
          child: Text('Hello, world!!!'),
        ),
      ),
    );
  }
}

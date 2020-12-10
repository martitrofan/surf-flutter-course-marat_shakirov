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
      title: Text(
        appBarText,
        textAlign: TextAlign.left,
        style: _appBarStyle,
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

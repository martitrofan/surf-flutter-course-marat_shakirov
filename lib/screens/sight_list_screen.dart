import 'package:flutter/material.dart';
import 'package:places/res/res.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {

  InlineSpan _buildMulticoloredRow(Color color, String text) {
    return TextSpan(children: [
      TextSpan(
        text: text[0],
        style: TextStyle(color: color),
      ),
      TextSpan(text: text.substring(1)),
    ]);
  }

  Widget _buildAppBar() {
    return AppBar(
      title: RichText(
        text: TextSpan(style: appBarStyle, children: [
          _buildMulticoloredRow(Colors.green, appBarTextFirst),
          _buildMulticoloredRow(Colors.yellow, appBarTextOther),
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

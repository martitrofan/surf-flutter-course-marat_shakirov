import 'package:flutter/material.dart';
import 'package:places/res/res.dart';
import 'package:places/screens/sight_card.dart';

import '../mocks.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  Widget _buildAppBar() {
    return AppBar(
      title: Text(
        appBarText,
        textAlign: TextAlign.left,
        style: appBarStyle,
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      toolbarHeight: 128,
    );
  }

  Widget _buildBody() {
    return ListView.builder(
      itemCount: mocks.length,
      itemBuilder: (context, index) => SightCard(
        sight: mocks[index],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}

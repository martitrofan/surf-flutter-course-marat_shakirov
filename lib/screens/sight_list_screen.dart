import 'package:flutter/material.dart';
import 'package:places/res/res.dart';
import 'package:places/screens/sight_card.dart';
import 'package:places/screens/sight_details.dart';

import '../mocks.dart';

///список мест для посещения
class SightListScreen extends StatefulWidget {

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {

  Widget _buildBody() {
    return ListView.builder(
      itemCount: mocks.length,
      itemBuilder: (context, index) => GestureDetector(
        child: SightCard(
          sight: mocks[index],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SightDetails(
                sight: mocks[index],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _MyAppBar(),
      body: _buildBody(),
    );
  }
}

class _MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const double appBarToolbarHeight = 128;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appBarMainText,
        textAlign: TextAlign.left,
        style: appBarStyle,
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      toolbarHeight: appBarToolbarHeight,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, appBarToolbarHeight);
}
